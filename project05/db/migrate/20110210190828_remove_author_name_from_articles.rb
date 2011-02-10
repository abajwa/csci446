class RemoveAuthorNameFromArticles < ActiveRecord::Migration
  def self.up
    remove_column :articles, :author_name
  end

  def self.down
    add_column :articles, :author_name, :string
  end
end
