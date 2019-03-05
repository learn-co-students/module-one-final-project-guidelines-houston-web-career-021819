class CreateUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |table|
      table.string :name
      table.date :dob
    end
  end
end
