class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :title
      t.string :phone, null: false
      t.string :status, null: false

      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email, unique: true
    add_index :users, :title
    add_index :users, :phone
    add_index :users, :status
  end
end
