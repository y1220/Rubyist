class AddNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:tasks, :chapter, false)
    change_column_null(:tasks, :keyword, false)
  end
end
