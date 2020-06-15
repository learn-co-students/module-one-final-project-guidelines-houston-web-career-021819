class CreateSubjectTable < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies do |table|
      table.string :hobby
    end
  end
end
