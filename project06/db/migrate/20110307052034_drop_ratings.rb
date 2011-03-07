class DropRatings < ActiveRecord::Migration
  def self.up
  	drop_table :ratings
  end

  def self.down
  	drop_table :ratings
  end
end
