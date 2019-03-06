class CreateMembersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.float :balance
    end
  end
end
