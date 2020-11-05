class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :type
      t.text :text
      t.references :box, foreign_key: true

      t.timestamps
    end
  end
end
