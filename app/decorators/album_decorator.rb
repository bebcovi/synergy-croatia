class AlbumDecorator < Draper::Decorator
  delegate_all
  translates :name, :description

  def to_s
    name
  end
end
