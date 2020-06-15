class CreateUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :seniors do |table|
      table.string :name
      table.date :dob
      table.string :email
      table.string :password
    end
  end
end
