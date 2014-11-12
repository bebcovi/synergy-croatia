require "pg_search"

class Text < ActiveRecord::Base
  include PgSearch

  before_destroy { false } # Forbid deletion

  validates_uniqueness_of :action, scope: :controller

  multisearchable against: %i[body_en body_hr]

  def self.find(uid)
    begin
      super(Integer(uid))
    rescue ArgumentError
      controller, action = uid.split("/")
      where(controller: controller, action: action).first
    end
  end
end
