def artist_information(current_user, selected_artist)
    artists = users_songs(current_user).map { | song | song.artist }
    #puts "\e[H\e[2J"
    songs_for_artist = users_songs(current_user).select {| song | song.artist == selected_artist}

    albums_for_artist = users_songs(current_user).select {| song | song.artist == selected_artist}
            
    artist_information = $prompt.select('❤ ❤ ❤ What information would you like to see for this artist? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Songs", 1
        menu.choice "Albums", 2
    end
        
    case artist_information
    when 1
        puts  songs_for_artist.map {| song | song.title} 
        your_music(current_user)
    when 2
        puts  albums_for_artist.map {| song | song.album} 
        your_music(current_user)
    end  
end