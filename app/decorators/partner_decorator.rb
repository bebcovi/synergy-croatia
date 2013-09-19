class PartnerDecorator < Draper::Decorator
  delegate_all
  translates :name, :url

  def to_s
    name
  end
end
