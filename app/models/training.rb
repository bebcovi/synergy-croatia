require 'date'

class Training < ActiveRecord::Base
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries
  attr_accessor :infoletter_file, :participation_form_file

  scope :upcoming, where("ends_on >= '#{Date.today}'")

  before_update  :delete_files, :upload_files
  before_create  :upload_files
  before_destroy :delete_files

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

  def upload_files
    if infoletter_file.present?
      response = dropbox_client.put_file(infoletter_file.original_filename, infoletter_file.read)
      self.infoletter = File.basename(response['path'])
    end
    if participation_form_file.present?
      response = dropbox_client.put_file(participation_form_file.original_filename, participation_form_file.read)
      self.participation_form = File.basename(response['path'])
    end
    true
  end

  def delete_files
    dropbox_client.file_delete(infoletter) rescue nil
    dropbox_client.file_delete(participation_form) rescue nil
    true
  end

  def dropbox_client
    SynergyCroatia::Application.config.dropbox_client
  end
end
