class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do | table |
    table.string :username
    table.string :password
    # table.belongs_to :user, index: { unique: true }, foreign_key: true
    end
  end
end
