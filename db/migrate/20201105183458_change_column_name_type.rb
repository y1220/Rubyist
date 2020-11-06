class ChangeColumnNameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :type, :content_type
  end
end
