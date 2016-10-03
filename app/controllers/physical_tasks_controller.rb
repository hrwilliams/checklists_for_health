class PhysicalTasksController < ApplicationController
  def new
    @week = Week.find(params[:week_id])
    @physical_task = @week.physical_tasks.new
  end

  def create
    @week = Week.find(params[:week_id])
    @physical_task = @week.physical_tasks.new(physical_task_params)
    if @physical_task.save
      respond_to do |format|
        format.html { redirect_to week_path(@physical_task.week) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @week= Week.find(params[:week_id])
    @physical_task = PhysicalTask.find(params[:id])
  end

  def update
    @week= Week.find(params[:week_id])
    @physical_task = PhysicalTask.find(params[:id])
    if @physical_task.update(physcical_task_params)
      flash[:notice] = "Task successfully updated!"
      respond_to do |format|
        format.html { redirect_to week_path(@physical_task.week) }
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @physical_task = PhysicalTask.find(params[:id])
    @physical_task.destroy
    flash[:notice] = "Task successfully deleted."
    redirect_to week_path(@physical_task.week)
  end

  private
    def physical_task_params
      params.require(:physical_task).permit(:description)
    end
  end
