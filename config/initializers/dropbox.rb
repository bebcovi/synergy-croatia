require 'dropbox_sdk'

settings = YAML.load(ERB.new(File.read("#{Rails.root}/config/dropbox.yml")).result).deep_symbolize_keys
settings = settings[Rails.env.to_sym] || settings

session = DropboxSession.new(settings[:app_key], settings[:app_secret])
session.set_access_token(settings[:access_token], settings[:access_token_secret])

Rails.configuration.dropbox_client = DropboxClient.new(session, settings[:access_type])

require "#{Rails.root}/lib/dropbox_upload"
