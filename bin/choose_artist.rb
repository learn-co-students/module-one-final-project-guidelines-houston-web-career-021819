def choose_artist
    artist_selection = $prompt.select("❤ ❤ ❤ Which artist would you like to choose? ❤ ❤ ❤") do | menu |
        menu.enum "."
        users_songs(current_user).artists.each_with_index do | artist, index |
            menu.choice artist, index
        end
    end
    artist_information
end