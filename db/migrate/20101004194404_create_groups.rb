class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
      t.integer :type_id
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :contact_address
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
