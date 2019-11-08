class ApplicationController < ActionController::Base

  def root
    redirect_to home_path
  end

  def home
  end

end
