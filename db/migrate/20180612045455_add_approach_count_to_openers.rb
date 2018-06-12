class AddApproachCountToOpeners < ActiveRecord::Migration[5.0]
  def change
    add_column :openers, :approaches_count, :integer
  end
end
