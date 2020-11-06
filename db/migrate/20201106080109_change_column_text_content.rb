class ChangeColumnTextContent < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :text, :line
  end
end
