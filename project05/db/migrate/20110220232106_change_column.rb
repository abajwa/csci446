class ChangeColumn < ActiveRecord::Migration
  def self.up
  	  change_column :articles, :update_count, :integer, :default => 0
  end

  def self.down
  end
end
