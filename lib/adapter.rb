class Csv
  def initialize()
    @csv = CSV.new(File.read(File.join(File.dirname(__FILE__),"../db/spotify_data.csv")), headers: true)
  end

  def seed
    @csv.map do |row|
      row = row.to_hash
      #create tables for all classes
      account = Account.find_or_create_by({ username: row['User Name'], password: row['Password']})

      song = Song.create({ title: row['Track Name'], artist: row['Artist Name'], album: row['Album Name'], duration_in_seconds: row['Track Duration (ms)'], url: row[row.keys[0]], account_id: account.id })

      playlist = Playlist.find_or_create_by({ name: row['Playlist Name'], account_id: account.id})

      #create join table by grab previous tables' ids and second table's ids
      User.create({song_id: song.id, playlist_id: playlist.id, account_id: account.id})

    end
  end
end