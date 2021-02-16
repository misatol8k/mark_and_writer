class WorksController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_work, only: %i[ show edit update destroy ]

  def index
    @q = Work.all.ransack(params[:q])
    @works = @q.result(distinct: true)
  end

  def new
    @work = Work.new
  end

  def edit
  end

  def show
  end

  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to @work, notice: "Work was successfully created." }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work, notice: "Work was successfully updated." }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: "Work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:title, :content)
  end
end
