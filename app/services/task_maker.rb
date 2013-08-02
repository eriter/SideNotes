class TaskMaker
  def self.task_for_users(args)
    unless
      task = Task.create(args[:task_params])

      args[:users].each do |user|
        task.users << user
    raise TaskMaker::CreationErrors
  end
end
