module DropboxUpload
  module ClassMethods
    def has_dropbox_file(name, options = {})
      define_method(name) do
        DropboxUpload::DropboxFile.new(read_attribute(name))
      end

      define_method("#{name}=") do |value|
        if send(name).present?
          @queued_for_delete = send(name).filename
        end

        unless value.nil?
          write_attribute(name, value.original_filename)
          @queued_for_write = value
        end
      end

      before_save do
        if @queued_for_delete
          DropboxUpload::Helpers.delete(@queued_for_delete)
        end

        if @queued_for_write
          url = DropboxUpload::Helpers.upload(@queued_for_write)
          write_attribute(name, url)
        end

        true
      end

      before_destroy do
        if send(name).present?
          @queued_for_delete = send(name).filename
        end
      end

      after_destroy do
        if @queued_for_delete
          DropboxUpload::Helpers.delete(@queued_for_delete)
        end
      end
    end
  end

  class DropboxFile
    def initialize(url)
      @url = url
    end

    def url(options = {})
      @url + (options[:download] ? "?dl=1" : "")
    rescue NoMethodError
      nil
    end

    def filename
      File.basename(@url)
    rescue TypeError
      nil
    end

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
      dropbox_client.file_delete(filename)
    rescue DropboxError
    end

    def url(filename)
      result = dropbox_client.media(filename)["url"]
      result = File.join(File.dirname(result), filename)
    end

    def dropbox_client
      @dropbox_client ||= Rails.configuration.dropbox_client
    end
  end

  def self.included(klass)
    klass.extend(ClassMethods)
  end
end

ActiveRecord::Base.send(:extend, DropboxUpload::ClassMethods)
