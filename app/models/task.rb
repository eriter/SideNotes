class Task < ActiveRecord::Base
  has_many :tags
  has_many :users, through: :tags

  attr_protected
  validates :task_name, :presence => true

  def date_today
    time_zone.now.to_date
  end

  def date_tomorrow
    date_today + 1.day
  end
end
