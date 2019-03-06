def choose_song
    song_selection = $prompt.select("❤ ❤ ❤ What song would you like to choose? ❤ ❤ ❤") do | menu |
        menu.enum "."
        users_songs(current_user).each_with_index do | song, index |
            menu.choice song.title, index
        end
    end
    song_information
end