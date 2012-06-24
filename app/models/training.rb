require 'date'

class Training < ActiveRecord::Base
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries
  attr_accessor :infoletter_file, :participation_form_file

  scope :upcoming, where("ends_on >= '#{Date.today}'")
  default_scope order(:begins_on)

  before_update  :delete_files, :upload_files
  before_create  :upload_files
  before_destroy :delete_files

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def infoletter_url
    dropbox_client.media(infoletter)['url'] + "?dl=1"
  end

  def participation_form_url
    dropbox_client.media(participation_form)['url'] + "?dl=1"
  end

  def to_s
    title
  end

  private

  def upload_files
    dropbox_client.put_file(infoletter_file.original_filename, infoletter_file.read)
    dropbox_client.put_file(participation_form_file.original_filename, participation_form_file.read)

    self.infoletter = infoletter_file.original_filename
    self.participation_form = participation_form_file.original_filename

    true
  end

  def delete_files
    dropbox_client.file_delete(infoletter)
    dropbox_client.file_delete(participation_form)

    true
  end

  def dropbox_client
    SynergyCroatia::Application.config.dropbox_client
  end
end
