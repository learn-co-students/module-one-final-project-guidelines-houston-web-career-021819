def choose_song(current_user)
    # puts "\e[H\e[2J"
    song_selection = $prompt.select("❤ ❤ ❤ Which song would you like to choose? ❤ ❤ ❤", per_page: 35) do | menu |
        menu.enum "."
        users_songs(current_user).each_with_index do | song, index |
            menu.choice song.title, index
        end
        
    end
    selected_song = users_songs(current_user)[song_selection]
    song_information(current_user, selected_song)
end