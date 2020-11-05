class AddIntroToPage < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :intro, :string
  end
end
