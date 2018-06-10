class AddVenueCountToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :venues_count, :integer
  end
end
