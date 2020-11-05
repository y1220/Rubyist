class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.string :title
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
