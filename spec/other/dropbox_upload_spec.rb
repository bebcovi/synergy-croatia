require "spec_helper"
require "net/http"
require "uri"

describe :DropboxUpload, :vcr do
  class CreateUsers < ActiveRecord::Migration
    def change
      create_table :users do |t|
        t.string :attachment
      end
    end
  end

  class User < ActiveRecord::Base
    has_dropbox_file :attachment
  end

  before(:all) do
    ActiveRecord::Migration.verbose = false
    CreateUsers.migrate(:up)
  end

  it "handles uploading well on CUD actions of a model" do
    user = User.create(attributes_for(:user, file: "landscape.jpg"))
    "landscape.jpg".should be_on_dropbox

    Faraday.get(user.attachment.url).should be_a_success
    Faraday.get(user.attachment.url(download: true)).should be_a_success

    user.update_attributes(attributes_for(:user, file: "forest.jpg"))
    "landscape.jpg".should_not be_on_dropbox
    "forest.jpg".should be_on_dropbox

    user2 = User.create(attributes_for(:user, file: "forest.jpg"))
    user2.attachment.filename.should == "forest (1).jpg"
    "forest (1).jpg".should be_on_dropbox
    user2.destroy

    user.destroy
    "forest.jpg".should_not be_on_dropbox
  end

  after(:all) do
    CreateUsers.migrate(:down)
    ActiveRecord::Migration.verbose = true
  end
end
