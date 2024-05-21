class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash.now[:info] = "スケジュールが作成されました"
      redirect_to :index
    else
      flash.now[:warning] = "入力内容に問題があります！"
      render "new"
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      flash.now[:info] = "スケジュールが更新されました"
      redirect_to :index
    else
      flash.now[:warning] = "入力内容に問題があります！"
      render "edit"
    end
  end

  def index
    @schedules = Schedule.all
  end

  def destroy_page
    @schedule = Schedule.find(params[:id])
  end

  def destroy
    Schedule.find(params[:id]).destroy
    flash.now[:success] = "スケジュールが削除されました"
    redirect_to :index
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  private
    def schedule_params
      params.require(:schedule).permit(:title, :start_day, :end_day, :all_day, :memo)
    end
end
