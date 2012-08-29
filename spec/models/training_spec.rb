require 'spec_helper'
require 'yaml'
require 'erb'

describe Training do
  describe "uploading files to Dropbox", :vcr do
    let(:dropbox_client) {
      @dropbox_client ||= begin
        settings = YAML.load(ERB.new(File.read("#{Rails.root}/config/dropbox.yml"))).symbolize_keys
        session = DropboxSession.new(settings[:app_key], settings[:app_secret])
        session.set_access_token(settings[:access_token], settings[:access_token_secret])
        DropboxClient.new(session, settings[:access_type])
      end
    }
  end
end
