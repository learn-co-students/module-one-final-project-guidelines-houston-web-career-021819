class CreateReceiversTable < ActiveRecord::Migration[5.0]
  def change
    create_table :receivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
    end
  end
end
