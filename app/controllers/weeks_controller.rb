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
      redirect_to weeks_path
    else
      render :new
  end
end

private
  def week_params
    params.require(:week).permit(:date)
  end
end  
