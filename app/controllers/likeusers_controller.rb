class LikeUsersController < ApplicationController

  before_action :authenticate_user
  
  def create
    @likeuser = LikeUser.new(user_id: @current_user.id, user_id: params[:user_id])

    @likeuser.save
  end

  def destroy
    @likeuser = LikeUser.find_by(user_id: @current_user.id, user_id: params[:user_id])
    @likeuser.destroy
  end
  
end