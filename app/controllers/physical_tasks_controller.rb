class PhysicalTasksController < ApplicationController
  def new
    @week = Week.find(params[:week_id])
    @physical_task = @week.physical_tasks.new
  end

  def create
    @week = Week.find(params[:week_id])
    @physical_task = @week.physical_tasks.new(physical_task_params)
    if @physical_task.save
      redirect_to week_path(@physical_task.week)
    else
      render :new
    end
  end

  private
    def physical_task_params
      params.require(:physical_task).permit(:description)
    end
  end
