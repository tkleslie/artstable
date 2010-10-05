class CreateBoxOffices < ActiveRecord::Migration
  def self.up
    create_table :box_offices do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.time :mon_from
      t.time :mon_to
      t.time :tue_from
      t.time :tue_to
      t.time :wed_from
      t.time :wed_to
      t.time :thu_from
      t.time :thu_to
      t.time :fri_from
      t.time :fri_to
      t.time :sat_from
      t.time :sat_to
      t.time :sun_from
      t.time :sun_to

      t.timestamps
    end
  end

  def self.down
    drop_table :box_offices
  end
end
