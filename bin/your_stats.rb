def your_stats(current_user)

    your_stats = $prompt.select('❤ ❤ Which statistics would you like to see? ❤ ❤') do | menu |
    menu.enum ". "
    menu.choice "Total number of songs", 1
    menu.choice "Total number of albums", 2
    end

    case your_stats
    when 1
        num_songs = users_songs(current_user).uniq.length
        puts "❤ ❤ ❤ You have #{num_songs} songs. ❤ ❤ ❤"
        main_menu(current_user)
    when 2
        albums = users_songs(current_user).map { | song | song.album }
        num_albums = albums.uniq.length
        puts "❤ ❤ ❤ You have #{num_albums} albums. ❤ ❤ ❤"
        main_menu(current_user)
    end
end