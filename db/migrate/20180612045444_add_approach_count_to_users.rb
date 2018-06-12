class AddApproachCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :approaches_count, :integer
  end
end
