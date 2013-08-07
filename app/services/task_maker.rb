class TaskMaker

  def self.task_for_user(args)
    task = Task.create(args[:task_params])

    task.users << args[:user] 
  end
end
