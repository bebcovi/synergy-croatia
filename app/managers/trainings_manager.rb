class TrainingsManager < Struct.new(:listener)
  def create(attributes)
    training = Training.new(attributes)

    if training.save
      listener.create_training_succeeded(training)
    else
      listener.create_training_failed(training)
    end
  end

  def update(id, attributes)
    training = Training.find(id)

    if @training.update_attributes(attributes)
      listener.update_training_succeeded(training)
    else
      listener.update_training_failed(training)
    end
  end

  def destroy(id)
    training = Training.destroy(id)
    listener.destroy_training_succeeded(training)
  end
end
