class CreateTaskManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :task_managements do |t|
      t.references :admin_user, foreign_key: true
      t.string :states
      t.date :start_date
      t.date :end_date
      t.datetime :deadline
      t.boolean :email_status, default:0
      t.timestamps
    end
  end
end
