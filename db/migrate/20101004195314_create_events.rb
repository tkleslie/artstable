class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.integer :group_id
      t.datetime :date
      t.integer :venue_id
      t.string :description
      t.decimal :price
      t.decimal :student
      t.decimal :senior
      t.integer :box_office_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
