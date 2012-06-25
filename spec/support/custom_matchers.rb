RSpec::Matchers.define :be_on_dropbox do
  match do |actual|
    dropbox_client.search("", actual).any?
  end
end
