require 'csv'
require_relative '../config/environment.rb'
# Song.destroy_all
# User.destroy_all
# Playlist.destroy_all

# trey = User.create(username: "Trey", password: "Password")
# jing = User.create(username: "Jing", password: "Password")



# song = Song.create(title: "Enter the Unseen", artist: "Steven Goldmund", album: "Deep Below", genre: "World Music", url: "spotify:track:0wpHo9ufyiNdbnr9lIe0B8", user_id: trey.id)
# song2 = Song.create(title: "Emoji", artist: "Galantis", album: "Emoji", genre: "Pop", url: "spotify:track:55a4T3yJwr1ZVcKEprSwXC", user_id: jing.id)
# song = Song.create(title: "Lost In Japan - Remix", artist: "Shawn Mendes, Zedd", album: "Lost In Japan (Remix)", url: "spotify:track:575NJxNUVDqwJGdzBrlLbv", genre: "Pop", user_id: jing.id)
# song2 = Song.create(title: "Heavenly", artist: "Elise Magnefold", album: "Heavenly", url: "spotify:track:1uSaD0JKNb5o8Wv29zULwf", genre: "Genre", user_id: trey.id)


# playlist = Playlist.create(name: "Sleep", user_id: trey.id)
# playlist2 = Playlist.create(name: "Cardio", user_id: jing.id)

adapter = Csv.new()

adapter.seed
