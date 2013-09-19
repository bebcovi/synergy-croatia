Text.delete_all

texts = [
  ["pages", "about"],
  ["pages", "evs"],
  ["pages", "contact"],
  ["pages", "archive"],
  ["pages", "partners"],
]

texts.each do |controller, action|
  Text.new(controller: controller, action: action)
end
