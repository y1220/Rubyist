class AddColumnsToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :budget, :string
    add_column :people, :deadline, :string
  end
end
