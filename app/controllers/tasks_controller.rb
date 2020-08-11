class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end
end
