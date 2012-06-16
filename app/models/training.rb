class Training < ActiveRecord::Base
  serialize :additional_info

  def duration
    (ends_on - begins_on + 1).to_i
  end

  def to_s
    title
  end
end
