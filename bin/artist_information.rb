def artist_information
    songs_for_artist = users_songs(current_user).select {| song | song.artist == artists[artist_selection]}

    albums_for_artist = users_songs(current_user).select {| song | song.artist == artists[artist_selection]}
            
    artist_information = $prompt.select('❤ ❤ ❤ What information would you like to see for this artist? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Songs", 1
        menu.choice "Albums", 2
    end
        
    case artist_information
    when 1
        puts  songs_for_artist.map {| song | song.title} 
    when 2
        puts  albums_for_artist.map {| song | song.album} 
    end
end