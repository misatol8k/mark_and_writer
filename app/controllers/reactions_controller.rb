class ReactionsController < ApplicationController
  def create
    @reaction = current_user.reactions.build(reaction_params)
    # work_idは詳細表示しているworkのid,user_idはcurrent_userのidを保存する
    binding.pry
    @reaction.save
    redirect_to works_url, notice: "スタンプしました"
    # binding.pry
  end

  def destroy
    reaction = current_user.reactions.find_by(id: params[:id]).destroy
    redirect_to works_url, notice: "スタンプ削除しました"
  end

  private
  def reaction_params
    # params.require(:reaction).permit(:sticker_id)
    params.require(:reaction).permit(:sticker_id).merge(work_id: :work_id)
  end
end
