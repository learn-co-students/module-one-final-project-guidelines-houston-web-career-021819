Song.destroy_all
User.destroy_all
Playlist.destroy_all

trey = User.create(username: "Trey", password: "Password")
jing = User.create(username: "Jing", password: "Password")


song = Song.create(title: "Title", artist: "Artist", album: "Album", genre: "Genre", user_id: trey.id)
song2 = Song.create(title: "Title2", artist: "Artist2", album: "Album2", genre: "Genre", user_id: trey.id)
song = Song.create(title: "Title", artist: "Artist", album: "Album", genre: "Genre", user_id: jing.id)
song2 = Song.create(title: "Title2", artist: "Artist2", album: "Album2", genre: "Genre", user_id: jing.id)


playlist = Playlist.create(name: "Name", user_id: trey.id)
playlist2 = Playlist.create(name: "Name", user_id: jing.id)
