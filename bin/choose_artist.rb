def choose_artist(current_user)
    artists = users_songs(current_user).map { | song | song.artist }
    #puts "\e[H\e[2J"
    artist_selection = $prompt.select("❤ ❤ ❤ Which artist would you like to choose? ❤ ❤ ❤") do | menu |
        menu.enum "."

        artists.each_with_index do | artist, index |
            menu.choice artist, index
        end
    end
    selected_artist = artists[artist_selection]
    artist_information(current_user, selected_artist)
end