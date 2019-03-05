Song.destroy_all
User.destroy_all
Playlist.destroy_all

trey = User.new(username: "Trey", password: "Password")
jing = User.new(username: "Jing", password: "Password")


song = Song.new(title: "Title", artist: "Artist", album: "Album", genre: "Genre", user_id: trey.id)
song2 = Song.new(title: "Title2", artist: "Artist2", album: "Album2", genre: "Genre", user_id: trey.id)
song = Song.new(title: "Title", artist: "Artist", album: "Album", genre: "Genre", user_id: jing.id)
song2 = Song.new(title: "Title2", artist: "Artist2", album: "Album2", genre: "Genre", user_id: jing.id)


playlist = Playlist.new(name: "Name", user_id: trey.id)
playlist2 = Playlist.new(name: "Name", user_id: jing.id)
