require 'date'

class Training < ActiveRecord::Base
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries
  attr_accessor :infoletter, :participation_form

  scope :upcoming, where("ends_on >= '#{Date.today}'")
  default_scope order(:begins_on)

  before_save :upload_files

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end

  private

  def upload_files
    # Infoletter
    dropbox_client.put_file("/#{infoletter.original_filename}", infoletter.read)
    self.infoletter_url = dropbox_client.media(infoletter.original_filename)['url'] + "?dl=1"

    # Participation form
    dropbox_client.put_file("/#{participation_form.original_filename}", participation_form.read)
    self.participation_form_url = dropbox_client.media(participation_form.original_filename)['url'] + "?dl=1"

    true
  end

  def dropbox_client
    SynergyCroatia::Application.config.dropbox_client
  end
end
