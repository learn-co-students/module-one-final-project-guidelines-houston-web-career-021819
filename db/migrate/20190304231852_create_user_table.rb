class CreateUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do | table |
      # table.string :username
      # table.string :password
      table.belongs_to :song
      table.belongs_to :playlist
      table.integer :account_id
      # table.has_one :account
      #loctaion(zip code)
    end
  end
end
