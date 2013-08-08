class TasksController < ApplicationController
  before_filter :authenticate_user!

  def index
    @tasks = Task.all
    @new_task = Task.new
  end

  def create
    if TaskMaker.task_for_user(:params => params['task'], :user => current_user)
      flash[:notice] = 'Yay it worked'
    else
       flash[:error] = 'Failed to create the task'
    end

    redirect_to tasks_path
  end

  def new
    @task = Task.new(params[:task])
  end

  private

end
