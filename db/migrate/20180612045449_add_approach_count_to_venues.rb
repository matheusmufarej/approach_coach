class AddApproachCountToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :approaches_count, :integer
  end
end
