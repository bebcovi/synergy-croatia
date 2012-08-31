class SessionsManager < Struct.new(:listener)
  def create(credentials, storage)
    if credentials.symbolize_keys == {username: "janko", password: "janko"}
      storage.store(:user_id, 1)
      listener.create_session_succeeded
    else
      listener.create_session_failed
    end
  end

  def destroy(storage)
    storage.delete(:user_id)
    listener.destroy_session_succeeded
  end
end
