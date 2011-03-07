class ChangeColumnRating < ActiveRecord::Migration
  def self.up
  	change_column :games, :rating, :integer, :default => 0
  end

  def self.down
  end
end
