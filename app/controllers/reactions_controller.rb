class ReactionsController < ApplicationController
  def create
    set_work
    reaction = current_user.reactions.build(reaction_params)
    reaction[:work_id] = @work.id
    # work_idは詳細表示しているworkのid,user_idはcurrent_userのidを保存する
    reaction.save
    redirect_to works_url, notice: "スタンプしました"
  end

  def destroy
    reaction = current_user.reactions.find_by(id: params[:id]).destroy
    redirect_to works_url, notice: "スタンプ削除しました"
  end

  private
  def reaction_params
    params.require(:reaction).permit(:sticker_id)
  end
  def set_work
    @work = Work.find(params[:work_id])
  end
end
