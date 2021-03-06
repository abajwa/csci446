class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :author_name
      t.text :body
      t.string :creation_date
      t.string :author_id, :null => false, 
      :options => "CONSTRAINT fk_articles_author_id REFERENCES authors(id)"

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
