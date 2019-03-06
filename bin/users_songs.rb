def users_songs(current_user)
    puts "\e[H\e[2J"
    Song.all.select { | song | song.user_id == current_user.id}
end