class AddUpdateCountToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :update_count, :integer
  end

  def self.down
    remove_column :articles, :update_count
  end
end
