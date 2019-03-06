def users_songs
    songs = Song.all.select { | song | song.user_id == current_user.id}
end