class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :task_status
      t.integer :list_id

      t.timestamps
    end
  end
end
