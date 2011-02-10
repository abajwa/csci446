class RemoveCreationDateFromArticles < ActiveRecord::Migration
  def self.up
    remove_column :articles, :creation_date
  end

  def self.down
    add_column :articles, :creation_date, :string
  end
end
