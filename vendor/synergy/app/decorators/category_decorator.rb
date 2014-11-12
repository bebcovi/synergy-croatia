class CategoryDecorator < Draper::Decorator
  delegate_all
  translates :name
  delegate :to_s
end
