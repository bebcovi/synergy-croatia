RSpec::Matchers.define :be_on_dropbox do
  match do |filename|
    begin
      !!Rails.configuration.dropbox_client.media(filename)
    rescue DropboxError
      false
    end
  end
end
