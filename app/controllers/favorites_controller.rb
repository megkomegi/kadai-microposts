class FavoritesController < ApplicationController

  def create
    user = User.find(params[:micropost_id])
    current_user.favorite(user)
    flash[:success] = 'いいね！をしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.unfollow(user)
    flash[:success] = 'いいね！解除しました。'
    redirect_to user
  end
end
