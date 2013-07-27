class Tag < ActiveRecord::Base
  attr_protected

  belongs_to :user
  belongs_to :task
end
