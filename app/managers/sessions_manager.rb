class SessionsManager < BaseManager
  def create(credentials, storage)
    if credentials.symbolize_keys == {username: ENV["USERNAME"], password: ENV["PASSWORD"]}
      storage.store(:user_id, 1)
      create_succeeded
    else
      create_failed
    end
  end

  def destroy(storage)
    storage.delete(:user_id)
    destroy_succeeded
  end
end
