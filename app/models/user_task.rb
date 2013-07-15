class UserTask < ActiveRecord::Base
  belongs_to :tasks
  belongs_to :users
end
