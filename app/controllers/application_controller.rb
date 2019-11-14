class ApplicationController < ActionController::Base
  helper_method :logged_in?

  def root
    redirect_to home_path
  end

  def home
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless loggen_in?
  end

end
