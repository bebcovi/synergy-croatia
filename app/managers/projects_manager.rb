class ProjectsManager < Struct.new(:listener)
  def create(attributes)
    project = Project.new(attributes)

    if project.save
      listener.create_succeeded(project)
    else
      listener.create_failed(project)
    end
  end

  def update(id, attributes)
    project = Project.find(id)

    if project.update_attributes(attributes)
      listener.update_succeeded(project)
    else
      listener.update_failed(project)
    end
  end

  def destroy(id)
    project = Project.destroy(id)
    listener.destroy_succeeded(project)
  end
end
