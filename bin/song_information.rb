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
        your_music(current_user)
    when 2
        puts selected_song.album
        your_music(current_user)
    when 3
        puts selected_song.genre
        your_music(current_user)
    when 4
        # play_request = prompt.yes?('Do you want to listen to the song now?') do |q|
        #     q.suffix 'Yes/No'
        #     q.positive 'Yes'
        #     q.negative 'No'
        #     q.convert -> (input) { !input.match(/^agree$/i).nil? }
        # end
        # if play_request == 'Yes'
        exec(open users_songs(current_user)[selected_song].url)
    end
    #your_music(current_user)
end
