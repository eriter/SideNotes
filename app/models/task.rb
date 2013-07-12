class Task < ActiveRecord::Base
  attr_protected
  validates :task_name, :presence => true
end
