class RemoveColumnsFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :budget
    remove_column :people, :deadline
  end
end
