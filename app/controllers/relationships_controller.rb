class RelationshipsController < ApplicationController

  def create
    @user = User.find_by(params[:follow_id])
    @current_user.follow(@user)
    redirect_to ("/users/index")
  end

  def destroy
    @user = Relationship.find(params[:id]).following
    @current_user.unfollow!(@user)
    redirect_to @user
  end

end
