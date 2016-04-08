class FollowedUsersController < ApplicationController
  def create
    user_to_follow = User.find_by_username(params[:username])

    current_user.follow(user_to_follow)

    redirect_to users_path
  end
end
