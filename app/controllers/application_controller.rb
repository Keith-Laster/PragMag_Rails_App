class ApplicationController < ActionController::Base
  private

  def require_signin
    session[:intended_url] = request.url
    redirect_to new_session_url, alert: 'Please sign in first!' unless current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    current_user == user
  end

  def require_admin
    redirect_to root_url, alert: 'Unauthorized access!' unless current_user_admin?
  end

  def current_user_admin?
    current_user && current_user.admin?
  end

  helper_method :current_user_admin?

  helper_method :current_user?

  helper_method :current_user
end
