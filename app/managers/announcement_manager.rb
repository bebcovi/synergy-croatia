class AnnouncementManager < BaseManager
  def create(attributes)
    Announcement.first.try(:destroy)
    announcement = Announcement.new(attributes)

    if announcement.save
      create_succeeded(announcement)
    else
      create_failed(announcement)
    end
  end

  def update(attributes)
    announcement = Announcement.first

    if announcement.update_attributes(attributes)
      update_succeeded(announcement)
    else
      update_failed(announcement)
    end
  end

  def destroy
    announcement = Announcement.first.destroy
    destroy_succeeded(announcement)
  end
end
