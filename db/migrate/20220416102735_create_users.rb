class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fullname, limit: 100, :null => false
      t.string :username, limit: 50, :null => false
      t.string :password, limit: 50, :null => false
      t.boolean :status

      t.timestamps
    end
  end
end
