class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @new_task = Task.new
  end

  def create
    task = Task.new(params['task'])

    if task.save
      flash[:notice] = 'Yay it worked'
    else
      flash[:error] = 'oh noes! ' + task.errors.full_messages.to_sentence
    end

    redirect_to tasks_path
  end

  private
end
