class FavoritesController < ApplicationController
  # before_action :authenticate_user!
  # respond_to? :js

  def create
    favorite = current_user.favorites.create(work_id: params[:work_id])
    redirect_to works_url, notice: "お気に入り登録しました"
    # @favorite = current_user.favorites.create(work_id: params[:favorites][:work_id])
    # favorite = current_user.favorites.build(user_id: @current_user.id, work_id: params[:favorites][:work_id])
    # favorite.save!
    # @work = Work.find_by(@work.id)
    # current_user.favorite(@work)
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to works_url, notice: "お気に入り解除しました"
    # @favorite = current_user.favorites.find_by(id: params[:id]).destroy
    # @work = current_user.favorite_works.find(params[:id])
    # current_user.unfavorite(@work)
  end
end
