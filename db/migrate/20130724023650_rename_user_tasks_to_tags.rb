class RenameUserTasksToTags < ActiveRecord::Migration
  def change
    rename_table :user_tasks, :tags
  end
end
