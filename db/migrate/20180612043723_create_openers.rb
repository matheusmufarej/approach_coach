class CreateOpeners < ActiveRecord::Migration
  def change
    create_table :openers do |t|
      t.integer :styles_id

      t.timestamps

    end
  end
end
