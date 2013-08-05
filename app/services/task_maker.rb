class TaskMaker
  def self.task_for_user(args)
    raise TaskMaker::CreationErrors
    unless
      task = Task.create(args[:task_params])

      args[:users].each {|user|task.users << user}
  end
end
