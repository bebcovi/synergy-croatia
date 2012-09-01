class ProjectsManager < BaseManager
  def create(attributes)
    project = Project.new(attributes)

    if project.save
      create_succeeded(project)
    else
      create_failed(project)
    end
  end

  def update(id, attributes)
    project = Project.find(id)

    if project.update_attributes(attributes)
      update_succeeded(project)
    else
      update_failed(project)
    end
  end

  def destroy(id)
    project = Project.destroy(id)
    destroy_succeeded(project)
  end
end
