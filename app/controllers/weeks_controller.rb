class WeeksController < ApplicationController
  def index
    @weeks = Week.all
  end

  def show
    @week = Week.find(params[:id])
  end

  def new
    @week = Week.new
  end

  def create
    @week = Week.new(week_params)
    if @week.save
      # @week.day.create(day_of_week: "Sunday")
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
