texts = [
  ["pages", "about"],
  ["pages", "evs"],
  ["pages", "contact"],
  ["pages", "archive"],
  ["pages", "partners"],
  ["pages", "testimonials"],
]

texts.each do |controller, action|
  Text.create(controller: controller, action: action)
end
