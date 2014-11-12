class FileUploader < CarrierWave::Uploader::Base
  def store_dir
    [model.class.to_s.underscore, mounted_as, model.id].join("/")
  end

  def extension
    file.extension
  end
end
