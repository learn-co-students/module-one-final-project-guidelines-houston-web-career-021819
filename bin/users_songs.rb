def users_songs(current_user)
    #puts "\e[H\e[2J"
    Song.all.select { | song | song.account_id == current_user.account_id}
end