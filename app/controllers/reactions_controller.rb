class ReactionsController < ApplicationController
  def create
    reaction = current_user.reactions.create(work_id: params[:work_id])
    redirect_to works_url, notice: "スタンプしました"
  end

  def destroy
    reaction = current_user.reactions.find_by(id: params[:id]).destroy
    redirect_to works_url, notice: "スタンプ削除しました"
  end
end
