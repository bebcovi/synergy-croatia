class PagePhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  DIMENSIONS = {width: 640, height: 88}

  resize_to_fit DIMENSIONS[:width], nil

  version :display do
    process :crop
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  private

  def crop
    manipulate! do |image|
      initialize_crop_dimensions if model.crop_x.blank?

      x = model.crop_x
      y = model.crop_y
      w = model.crop_w
      h = model.crop_h

      image.crop!(x, y, w, h)
    end
  end

  def initialize_crop_dimensions
    image_matrix = ::Magick::Image.read(@file.file).first
    original_width, original_height = image_matrix.columns, image_matrix.rows

    w = DIMENSIONS[:width]
    h = (DIMENSIONS[:height] * w) / DIMENSIONS[:width]
    x = 0
    y = (original_height / 2) - (h / 2)

    model.crop_x = x
    model.crop_y = y
    model.crop_w = w
    model.crop_h = h
  end
end
