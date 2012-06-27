module DropboxUpload
  module ClassMethods
    def has_dropbox_file(*attributes)
      instance_eval do
        before_create do
          attributes.each do |attribute|
            if send(attribute).respond_to?(:read)
              send("#{attribute}=", upload_to_dropbox(send(attribute)))
            end
          end
        end

        before_update do
          attributes.each do |attribute|
            if send(attribute).respond_to?(:read)
              delete_from_dropbox(send(attribute))
              send("#{attribute}=", upload_to_dropbox(send(attribute)))
            end
          end
        end

        before_destroy do
          attributes.each do |attribute|
            delete_from_dropbox(send(attribute))
          end
        end
      end

      class_eval do
        attributes.each do |attribute|
          define_method "#{attribute}_url" do
            dropbox_client.media(send(attribute))['url'] + "?dl=1" rescue nil
          end
        end

        include HelperMethods
        private *HelperMethods.instance_methods
      end
    end
  end

  module HelperMethods
    def upload_to_dropbox(file)
      response = dropbox_client.put_file(file.original_filename, file.read)
      File.basename(response['path'])
    end

    def delete_from_dropbox(filename)
      dropbox_client.file_delete(filename) rescue nil
    end

    def dropbox_client
      SynergyCroatia::Application.config.dropbox_client
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end

ActiveRecord::Base.send(:include, DropboxUpload)
