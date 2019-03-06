class CreateInterestTable < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |table|
      table.belongs_to :user, :hobby
    end
  end
end
