class CreateSubjectTable < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |table|
      table.string :subject
    end
  end
end
