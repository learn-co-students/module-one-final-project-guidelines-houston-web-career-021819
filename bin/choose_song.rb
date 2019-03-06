def choose_song(current_user)
    puts "\e[H\e[2J"
    song_selection = $prompt.select("❤ ❤ ❤ What song would you like to choose? ❤ ❤ ❤") do | menu |
        menu.enum "."
        users_songs(current_user).each_with_index do | song, index |
            menu.choice song.title, index
        end
    end
    song_information(current_user, song_selection)
end