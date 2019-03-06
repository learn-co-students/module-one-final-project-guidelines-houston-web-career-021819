class CreateMerchant < ActiveRecord::Migration[5.0]
  def change
    create_table :merchants do | table |
      table.text :name
      table.text :address
    end 
  end
end
