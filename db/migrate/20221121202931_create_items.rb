class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.decimal :price
      t.references :user, null: false, foreign_key: true
      t.boolean :availability
      t.string :item_type
      t.string :category
      t.string :size
      t.string :color
      t.string :brand

      t.timestamps
    end
  end
end
