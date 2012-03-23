class Training < ActiveRecord::Base
  def duration
    (ends_on - begins_on + 1).to_i
  end
end
