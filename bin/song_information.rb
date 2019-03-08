def song_information(current_user, selected_song)
    # puts "\e[H\e[2J"
    song_information = $prompt.select('❤ ❤ ❤ What information would you like to see for this song? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Artist", 1
        menu.choice "Album", 2
        menu.choice "Duration of the Song", 3 
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
        duration_mins = (selected_song.duration_in_seconds).to_f.round(6) / 1000 / 60
        arr = duration_mins.to_s.split('.')
        min = arr[0]
        sec = (((arr[1].to_i)  / 10000 * 60).round(2)).to_s.first(2).to_i
        puts "❤ ❤ ❤ ❤ #{min} minutes and #{sec} seconds. ❤ ❤ ❤ ❤" 
        main_menu(current_user)
        
    when 4
        system("open", "#{selected_song.url}")
        main_menu(current_user)
    end
end

