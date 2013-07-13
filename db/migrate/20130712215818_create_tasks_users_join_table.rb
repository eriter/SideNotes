class CreateTasksUsersJoinTable < ActiveRecord::Migration
  def change

    create_table :user_tasks, id: false do |t|
      t.belongs_to :users
      t.belongs_to :tasks
    end
    add_index :user_tasks, :tasks_id
  end
end
