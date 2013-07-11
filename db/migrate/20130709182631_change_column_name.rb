class ChangeColumnName < ActiveRecord::Migration
  def change
      rename_column :lists, :list_status, :status
      rename_column :lists, :name, :description
      rename_column :tasks, :task_status, :status
  end
end
