class CreateSongTable < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do | table |
      table.string :title
      table.string :artist
      table.string :album
      table.string :genre
      table.string :url
      table.belongs_to :user
      #rating(1-5)
      #times_played
      #favorite(bullion)
    end
  end
end
