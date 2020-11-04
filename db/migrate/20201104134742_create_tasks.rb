class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :chapter
      t.string :keyword
      t.text :description

      t.timestamps
    end
  end
end
