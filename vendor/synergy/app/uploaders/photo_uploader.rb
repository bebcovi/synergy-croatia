class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include CarrierWave::Backgrounder::Delay

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  resize_to_limit nil, 800

  version :medium do
    resize_to_limit nil, 500
  end

  version :small do
    resize_to_fill 320, 200
  end
end
