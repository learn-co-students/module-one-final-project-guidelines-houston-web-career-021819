def album_information(current_user, selected_album)
    albums = users_songs(current_user).map { | song | song.album }
    #puts "\e[H\e[2J"
    songs_for_album = users_songs(current_user).select {| song | song.album == selected_album}

    artists_for_album = users_songs(current_user).select {| song | song.album == selected_album}
            
    album_information = $prompt.select('❤ ❤ ❤ What information would you like to know for this album? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Songs", 1
        menu.choice "Artists", 2
    end
    
    case album_information
    when 1
        puts  songs_for_album.map {| song | song.title} 
        main_menu(current_user)
    when 2
        puts  artists_for_album.map {| song | song.artist}
        main_menu(current_user)
    end
end
    