module DropboxUpload
  module ClassMethods
    def has_dropbox_file(name, options = {})
      define_method(name) do
        @dropbox_files ||= {}
        @dropbox_files[name] ||= DropboxUpload::DropboxFile.new(name, read_attribute(name))
      end

      define_method("#{name}=") do |value|
        if send(name).present?
          send(name).queue_or_delete
        end

        unless value.nil?
          send(name).queue_for_upload(value)
        end
      end

      before_save do
        url = send(name).save
        write_attribute(name, url) if url
        true
      end

      after_destroy do
        send(name).delete
        true
      end
    end
  end

  class DropboxFile
    def initialize(name, value)
      @name = name
      @value = value
    end

    def url(options = {})
      @value + (options[:download] ? "?dl=1" : "")
    rescue NoMethodError
      nil
    end

    def filename
      File.basename(@value)
    rescue TypeError
      nil
    end
    alias original_filename filename

    def queue_for_upload(file)
      @queued_for_upload = file
    end

    def queue_for_delete
      @queued_for_delete = true
    end

    def save
      delete if @queued_for_delete
      upload if @queued_for_upload
    end

    def delete() Helpers.delete(filename) end
    def upload() Helpers.upload(@queued_for_upload) end

    def present?
      !!filename
    end

    def file?
      true
    end
  end

  module Helpers
    extend self

    def upload(file)
      response = dropbox_client.put_file(file.original_filename, file.read)
      url(File.basename(response["path"]))
    end

    def delete(filename)
      dropbox_client.file_delete(filename.to_s)
      nil
    rescue DropboxError
    end

    def url(filename)
      result = dropbox_client.media(filename)["url"]
      result = File.join(File.dirname(result), filename)
    end

    def dropbox_client
      Rails.configuration.dropbox_client
    end
  end

  def self.included(klass)
    klass.extend(ClassMethods)
  end
end

ActiveRecord::Base.send(:extend, DropboxUpload::ClassMethods)
