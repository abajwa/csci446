class ChangeColumnFormatInGame < ActiveRecord::Migration
  def self.up
  	change_column :games, :rating, :integer
  end

  def self.down
  	change_column :games, :rating, :string
  end
end
