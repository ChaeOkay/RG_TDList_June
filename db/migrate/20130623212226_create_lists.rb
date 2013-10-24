class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :list_status

      t.timestamps
    end
  end
end
