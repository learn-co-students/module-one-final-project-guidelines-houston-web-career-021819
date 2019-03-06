class CreateFriendTable < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |table|
      table.string :name
      table.date :dob
      table.string :email
      table.string :password
    end
  end
end
