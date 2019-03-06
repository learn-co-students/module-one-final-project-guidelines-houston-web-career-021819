def users_songs(current_user)
    Song.all.select { | song | song.user_id == current_user.id}
end