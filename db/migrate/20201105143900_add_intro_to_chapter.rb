class AddIntroToChapter < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :intro, :string
  end
end
