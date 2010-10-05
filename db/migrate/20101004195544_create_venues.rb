class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :province
      t.string :postal
      t.string :notes
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :contact_address
      t.string :web_site_url
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
