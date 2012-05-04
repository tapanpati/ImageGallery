class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string  :encrypted_password
      t.date  :dob
      t.timestamps
    end
  end
end
