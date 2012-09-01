class Admin::AnnouncementsController < AdminController
  manages :announcement

  # Actions

  def show
    @announcement = Announcement.first
  end

  def new
    @announcement = Announcement.new
  end

  def create
    announcement_manager.create(params[:announcement])
  end

  def edit
    @announcement = Announcement.first
  end

  def update
    announcement_manager.update(params[:announcement])
  end

  def destroy
    announcement_manager.destroy
  end

  # Callbacks

  def create_succeeded(announcement)
    redirect_to admin_announcement_path
  end

  def create_failed(announcement)
    @announcement = announcement
    render :new
  end

  def update_succeeded(announcement)
    redirect_to admin_announcement_path
  end

  def update_failed(announcement)
    @announcement = announcement
    render :edit
  end

  def destroy_succeeded(announcement)
    redirect_to admin_announcement_path
  end
end
