class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, limit: 100, :null => false
      t.string :author, limit: 50, :null => false
      t.string :body, limit: 1000, :null => false
      t.string :url, limit: 200

      t.timestamps
    end
  end
end
