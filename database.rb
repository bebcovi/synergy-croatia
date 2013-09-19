require "active_record"

class OldProject < ActiveRecord::Base
  establish_connection adapter: "postgresql",
                       database: "synergy-croatia_production",
                       encoding: "unicode"
  self.table_name = "projects"
end

class Project < ActiveRecord::Base
  establish_connection adapter: "postgresql",
                       database: "synergy-croatia_development",
                       encoding: "unicode"
end

OldProject.offset(7).find_each do |project|
  Project.create(
    begins_on:           project.begins_on,
    ends_on:             project.ends_on,
    deadline:            project.deadline,

    name_en:             project.name_en,
    description_en:      project.description_en,
    summary_en:          project.summary_en,
    location_en:         "#{project.city_en}, #{project.country}",
    age_restriction_en:  "#{project.minimum_age} -- #{project.maximum_age}",
    capacity_en:         "#{project.available_space}",

    name_hr:             project.name_hr,
    description_hr:      project.description_hr,
    summary_hr:          project.summary_hr,
    location_hr:         "#{project.city_hr}, #{project.country}",
    age_restriction_hr:  "#{project.minimum_age} -- #{project.maximum_age}",
    capacity_hr:         "#{project.available_space}",
  )
end
