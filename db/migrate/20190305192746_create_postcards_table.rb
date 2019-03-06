class CreatePostcardsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :postcards do |t|
      t.integer :member_id 
      t.integer :receiver_id
      t.string :category
      t.string :size
      t.float :cost
      t.string :message
    end
  end
end
