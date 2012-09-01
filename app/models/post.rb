class Post < ActiveRecord::Base
  translates :title
  translates :body

  default_scope where("#{table_name}.expires_on >= current_date")

  def expired?
    expires_on < Date.today
  end
end
