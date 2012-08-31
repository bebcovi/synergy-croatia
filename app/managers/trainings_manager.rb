class TrainingsManager < Struct.new(:listener)
  def create(attributes)
    training = Training.new(attributes)

    if training.save
      listener.create_succeeded(training)
    else
      listener.create_failed(training)
    end
  end

  def update(id, attributes)
    training = Training.find(id)

    if @training.update_attributes(attributes)
      listener.update_succeeded(training)
    else
      listener.update_failed(training)
    end
  end

  def destroy(id)
    training = Training.destroy(id)
    listener.destroy_succeeded(training)
  end
end
