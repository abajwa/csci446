class CreateRatings < ActiveRecord::Migration
  def self.up
  	create_table :ratings do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
  	drop_table :ratings
  end
end
