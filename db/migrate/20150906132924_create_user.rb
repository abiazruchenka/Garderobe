class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email, unique: true
      t.string :password

      t.timestamps
    end
  end
end