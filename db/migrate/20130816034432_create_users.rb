class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :admin
      t.datetime :created_at
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :remember_token
      t.datetime :updated_at

      t.timestamps
    end
  end
end
