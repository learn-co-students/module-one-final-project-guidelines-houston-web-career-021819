def song_information(current_user, song_selection)
    puts "\e[H\e[2J"
    song_information = $prompt.select('❤ ❤ ❤ What information would you like to see for this song? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Artist", 1
        menu.choice "Album", 2
        menu.choice "Genre", 3 
        menu.choice "Play the Song", 4
    end

    case song_information
    when 1
        puts users_songs(current_user)[song_selection].artist
    when 2
        puts users_songs(current_user)[song_selection].album
    when 3
        puts users_songs(current_user)[song_selection].genre
    when 4
        # play_request = prompt.yes?('Do you want to listen to the song now?') do |q|
        #     q.suffix 'Yes/No'
        #     q.positive 'Yes'
        #     q.negative 'No'
        #     q.convert -> (input) { !input.match(/^agree$/i).nil? }
        # end
        # if play_request == 'Yes'
        exec(open users_songs(current_user)[song_selection].url)
    end
    main_menu(current_user)
end