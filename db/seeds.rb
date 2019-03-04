Song.destroy_all
User.destroy_all
Playlist.destroy_all

user = User.new(username: "Username", password: "Password")

song = Song.new(title: "Title", artist: "Artist", album: "Album", genre: "Genre", user_id: user.id)

playlist = Playlist.new(name: "Name", user_id: user.id)