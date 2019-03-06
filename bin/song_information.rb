def song_information
    song_information = prompt.select('❤ ❤ ❤ What information would you like to see for this song? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Artist", 1
        menu.choice "Album", 2
        menu.choice "Genre", 3 
    end

    case song_information
    when 1
        puts songs[song_selection].artist
    when 2
        puts songs[song_selection].album
    when 3
        puts songs[song_selection].genre
    end
    main_menu
end