class RelationshipsController < ApplicationController

  def following_users
    @user = User.find(params[:usre_id])
    @users = @user.following_users
  end

  def follower_users
    @user = User.find(params[:follower_id])
    @users = @user.follower_users
  end

  def follow
    current_user.follow(params[:id])
    redirect_back fallback_location: root_path
  end

  def unfollow
    current_user.unfollow(params[:id])
    redirect_back fallback_location: root_path
  end

end
