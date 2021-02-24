class TopsController < WorksController

    # トップページに新着作品を表示
    def index
      @works = Work.order(created_at: :desc).limit(5)
    end

    private

    # def set_work
    #   @work = Work.find(params[:id])
    # end

    def work_params
      params.require(:work).permit(:title, :content, :user_id)
    end
  end
