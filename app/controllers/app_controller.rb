class AppController < ApplicationController
  def new
    @schedule = Schedule.new
  end

  def create
    @app = Schedule.new(params.permit(:title, :start_day, :end_day, :all_day, :memo))
    if @app.save
      flash[:info] = "スケジュールが作成されました"
      redirect_to :index
    else
      flash[:warning] = @app.errors.full_messages 
      render "new"
    end
  end

  def edit
    @app= Schedule.find(params[:id])
  end

  def index
    @schedules = Schedule.all
  end
end
