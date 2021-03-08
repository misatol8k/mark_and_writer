class ReactionsController < ApplicationController
  def create
    reaction = current_user.reactions.create(work_id: params[:work_id], sticker_id: params[:sticker_id])
    # work_idは詳細表示しているworkのid,user_idはcurrent_userのidを保存する
    redirect_to works_url, notice: "スタンプしました"
  end

  def destroy
    reaction = current_user.reactions.find_by(id: params[:id]).destroy
    redirect_to works_url, notice: "スタンプ削除しました"
  end
end
