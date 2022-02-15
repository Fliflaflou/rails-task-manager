class TasksController < ApplicationController
  before_action :find_by_id, only: [:destroy, :show, :edit, :update]

  def list
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def find_by_id
    @task = Task.find(params[:id])
  end
end
