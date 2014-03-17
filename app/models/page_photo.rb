class PagePhoto < ActiveRecord::Base
  mount_uploader :image, PagePhotoUploader

  DIMENSIONS = {width: 640, height: 88}

  before_destroy { false } # Forbid deletion
  before_update :initialize_cropping
  after_update { image.recreate_versions! if image.present? }

  validates_uniqueness_of :action, scope: :controller

  def self.find(uid)
    begin
      super(Integer(uid))
    rescue ArgumentError
      controller, action = uid.split("/")
      find_by(controller: controller, action: action)
    end
  end

  def to_s
    begin
      I18n.t!("#{controller}.#{action}.navigation_title")
    rescue
      I18n.t("#{controller}.#{action}.page_title")
    end
  end

  private

  ##
  # HACK: For some reason, wheb PagePhotoUploader#initialize_crop_dimensions
  # assigns the "crop_<attr>" columns, these columns somehow later get
  # deassigned (god knows what sorcery happens in the callbacks). So here in
  # the model we assign them again (just duplicate the method).
  #
  def initialize_cropping
    if crop_x.blank?
      image_matrix = ::Magick::Image.read(image.file.file).first
      original_width, original_height = image_matrix.columns, image_matrix.rows

      w = DIMENSIONS[:width]
      h = (DIMENSIONS[:height] * w) / DIMENSIONS[:width]
      x = 0
      y = (original_height / 2) - (h / 2)

      self.crop_x = x
      self.crop_y = y
      self.crop_w = w
      self.crop_h = h
    end
  end
end
