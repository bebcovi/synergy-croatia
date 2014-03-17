class AddContactPagePhoto < ActiveRecord::Migration
  class PagePhoto < ActiveRecord::Base
  end

  def up
    PagePhoto.create(controller: "pages", action: "contact")
  end
end
