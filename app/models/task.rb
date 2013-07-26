class Task < ActiveRecord::Base
  has_many :tags
  has_many :users, through: :tags

  attr_protected
  validates :task_name, :presence => true
end
