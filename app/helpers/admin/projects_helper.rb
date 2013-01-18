module Admin::ProjectsHelper
  def uploaded_file(file, text)
    ProjectPresenter.new(nil, self).uploaded_file(file, text)
  end
end
