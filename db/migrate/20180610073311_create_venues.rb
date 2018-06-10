class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :style_id

      t.timestamps

    end
  end
end
