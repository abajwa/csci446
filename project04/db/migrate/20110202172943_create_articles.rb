class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :author_name
      t.text :body
      t.string :creation_date

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
