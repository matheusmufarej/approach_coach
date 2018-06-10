class AddOpenerCountToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :openers_count, :integer
  end
end
