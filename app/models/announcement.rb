class Announcement < ActiveRecord::Base
  translates :content

  default_scope where("#{table_name}.expires_on >= current_date")

  def to_s
    content
  end
end
