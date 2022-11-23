class AddDefValueToAvailability < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :availability, :boolean, default: true
  end
end
