class CreateDones < ActiveRecord::Migration[5.2]
  def change
    create_table :dones do |t|
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
