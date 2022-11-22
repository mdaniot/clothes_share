class AddTitleToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :title, :string
  end
end
