def album_information
    songs_for_album = users_songs(current_user).select {| song | song.album == albums[album_selection]}

    artists_for_album = users_songs(current_user).select {| song | song.album == albums[album_selection]}
            
    album_information = $prompt.select('❤ ❤ ❤ What information would you like to know for this album? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Songs", 1
        menu.choice "Artists", 2
    end
    
    case album_information
    when 1
        puts  songs_for_album.map {| song | song.title} 
    when 2
        puts  artists_for_album.map {| song | song.artist} 
    end
end
    