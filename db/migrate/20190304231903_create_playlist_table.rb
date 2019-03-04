class CreatePlaylistTable < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do | table |
      table.string :name
      table.belongs_to :user
      #table.timestamps
    end
  end
end
