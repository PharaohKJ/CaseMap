class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def session_save(user_id)
    session[:user_id] = user_id
  end

  def set_user_from_session
    @me = User.find(session[:user_id]) if session[:user_id].present?
    @me || nil
  end

  def session_destroy
    session[:user_id] = nil
  end
end
