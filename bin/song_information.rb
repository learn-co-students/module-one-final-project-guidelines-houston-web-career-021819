def song_information(current_user, selected_song)
    # puts "\e[H\e[2J"
    song_information = $prompt.select('❤ ❤ ❤ What information would you like to see for this song? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Artist", 1
        menu.choice "Album", 2
        menu.choice "Genre", 3 
        menu.choice "Play the Song", 4
    end

    case song_information
    when 1
        puts selected_song.artist.split(', ')
        main_menu(current_user)
    when 2
        puts selected_song.album
        main_menu(current_user)
    when 3
        puts selected_song.genre
        main_menu(current_user)
    when 4
        system("open", "#{selected_song.url}")
        main_menu(current_user)
    end
end

