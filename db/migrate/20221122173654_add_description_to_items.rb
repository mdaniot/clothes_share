class AddDescriptionToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :description, :text
  end
end
