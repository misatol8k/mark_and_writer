class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(work_id: params[:work_id])
    redirect_to works_url, notice: "#{favorite.work.user.name}お気に入り登録しました"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to works_url, notice: "#{favorite.work.user.name}お気に入り解除しました"
  end
end
