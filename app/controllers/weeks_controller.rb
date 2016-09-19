class WeeksController < ApplicationController
  before_action :authenticate_user!
  def index
    @weeks = current_user.weeks.all
    # @weeks = Week.all
  end

  def show
    @week = Week.find(params[:id])
  end

  def new
    # @week = Week.new
    @week = current_user.weeks.new
  end

  def create
    @week = current_user.weeks.new(week_params)
    # @week = Week.new(week_params)
    if @week.save
      @week.days.create(day_of_week: "Sunday")
      @week.days.create(day_of_week: "Monday")
      @week.days.create(day_of_week: "Tuesday")
      @week.days.create(day_of_week: "Wednesday")
      @week.days.create(day_of_week: "Thursday")
      @week.days.create(day_of_week: "Friday")
      @week.days.create(day_of_week: "Saturday")
      flash[:notice] = "Week successfully added!"
      redirect_to weeks_path
    else
      flash[:alert] = "Failure to add week due to error!!"
      render :new
    end
  end

  def edit
    @week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    if @week.update(week_params)
      flash[:notice] = "Week successfully updated!"
      redirect_to weeks_path
    else
      flash[:alert] = "Failure to update week due to error!!"
      render :edit
    end
  end

  def destroy
    @week = Week.find(params[:id])
    @week.destroy
    flash[:notice] = "Week successfully deleted!"
    redirect_to weeks_path
  end

private
  def week_params
    params.require(:week).permit(:date)
  end

end
