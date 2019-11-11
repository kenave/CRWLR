class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_crawls = @user.crawls
  end

end
