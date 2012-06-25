require 'date'

class Training < ActiveRecord::Base
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries
  attr_accessor :infoletter_file, :participation_form_file

  scope :upcoming, where("ends_on >= '#{Date.today}'")

  before_create do
    self.infoletter = upload_file(infoletter_file) if infoletter_file.present?
    self.participation_form = upload_file(participation_form_file) if participation_form_file.present?
  end
  before_update do
    if infoletter_file.present?
      delete_file(infoletter)
      self.infoletter = upload_file(infoletter_file)
    end
    if participation_form_file.present?
      delete_file(participation_form)
      self.participation_form = upload_file(participation_form_file)
    end
  end
  before_destroy do
    delete_file(infoletter)
    delete_file(participation_form)
  end

  translates :title, :description, :infoletter, :participation_form,
    :additional_info, :summary

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def infoletter_url
    dropbox_client.media(infoletter)['url'] + "?dl=1" rescue nil
  end

  def participation_form_url
    dropbox_client.media(participation_form)['url'] + "?dl=1" rescue nil
  end

  def to_s
    title
  end

  private

  def upload_file(file)
    response = dropbox_client.put_file(file.original_filename, file.read)
    File.basename(response['path'])
  end

  def delete_file(filename)
    dropbox_client.file_delete(filename) rescue nil
  end

  def dropbox_client
    SynergyCroatia::Application.config.dropbox_client
  end
end
