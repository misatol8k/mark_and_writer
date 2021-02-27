class ImpressionsController < ApplicationController
  before_action :set_work, only: %i[create edit update]
  before_action :authenticate_user!, only: %i[create edit update]

  def create
    @impression = @work.impressions.build(impression_params)
    respond_to do |format|
      if @impression.save
        format.js { render :index }
      else
        format.html { redirect_to work_path(@work), notice: '投稿できませんでした' }
      end
    end
  end

  def edit
    @impression = @work.impressions.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end

  def update
    @impression = @work.impressions.find(params[:id])
    respond_to do |format|
      if @impression.update(impression_params)
        flash.now[:notice] = 'コメントを更新しました'
        format.js { render :index }
      else
        flash.now[:notice] = 'コメントを更新できませんでした'
        format.js { render :edit_error }
      end
    end
  end

  def destroy
    @impression = Impression.find(params[:id])
    @impression.destroy
    respond_to do |format|
        flash.now[:notice] = 'コメントを削除しました'
        format.js { render :index }
    end
  end
  private
  def impression_params
    params.require(:impression).permit(:work_id, :comment)
  end
  def set_work
    @work = Work.find(params[:work_id])
  end
end
