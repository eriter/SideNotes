class Task < ActiveRecord::Base
  has_many :users, through: :user_tasks
  attr_protected
  validates :task_name, :presence => true
end
