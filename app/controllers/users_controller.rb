class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_crawls = @user.hosted_crawls
  end

end
