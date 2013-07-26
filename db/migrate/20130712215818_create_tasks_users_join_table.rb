class CreateTasksUsersJoinTable < ActiveRecord::Migration
  def change

    create_table :user_tasks do |t|
      t.belongs_to :user
      t.belongs_to :task
    end
    add_index :user_tasks, :task_id
  end
end
