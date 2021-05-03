class RelationshipsController < ApplicationController

  def followed
    @users = User.all
  end

  def follower
    @users = User.all
  end

  def create
    user = User.find(params[:user_id])
    relationship = current_user.relationships.new(user_id: user.id)
    relationship.save
    redirect_to users_path
  end

  def destroy
    user = User.find(params[:user_id])
    relationship = current_user.relationships.find_by(user_id: user.id)
    relationship.destroy
    redirect_to users_path
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
