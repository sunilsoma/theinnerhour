class AddStatusToTaskManagment < ActiveRecord::Migration[5.2]
  def change
  	add_column :task_managements, :not_done, :boolean, default: false
  end
end
