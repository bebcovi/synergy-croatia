require 'dropbox_sdk'

session = DropboxSession.new(ENV['DROPBOX_APP_KEY'], ENV['DROPBOX_APP_SECRET'])
session.set_access_token(ENV['DROPBOX_ACCESS_TOKEN'], ENV['DROPBOX_ACCESS_SECRET'])
SynergyCroatia::Application.config.dropbox_client = DropboxClient.new(session, :app_folder)

require 'dropbox_upload'
