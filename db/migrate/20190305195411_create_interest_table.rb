class CreateInterestTable < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |table|
      table.string :interests
      table.belongs_to :user, :subject
    end
  end
end
