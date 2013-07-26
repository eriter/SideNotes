class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :details
      t.string :blockers
      t.datetime :task_date
      t.timestamps
    end
  end
end
