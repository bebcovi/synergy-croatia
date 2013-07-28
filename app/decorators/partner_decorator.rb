class PartnerDecorator < Draper::Decorator
  delegate_all
  translates :name, :url
end
