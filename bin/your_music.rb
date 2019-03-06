def your_music(current_user)
    puts "\e[H\e[2J"
    your_music = $prompt.select('❤ ❤ ❤ What would you like to see? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Your Songs", 1
        menu.choice "Your Playlists", 2
        menu.choice "Your Artists", 3
        menu.choice "Your Albums", 4
        menu.choice "No. I don't want to do anything.", 5
    end

    case your_music
    when 1
        puts users_songs(current_user).map { | song | song.title }
        choose_song(current_user)
    when 2
        playlists = Playlist.all.select { | playlist | playlist.user_id == current_user.id}
        puts playlists.map { | playlist | playlist.name }
        # choose_playlist(current_user)
    when 3
        puts artists = users_songs(current_user).map { | song | song.artist }
        choose_artist(current_user)
    when 4
        puts albums = users_songs(current_user).map { | song | song.album }
        choose_album(current_user)
    when 5
        welcome()
    end
end
