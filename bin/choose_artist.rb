def choose_artist(current_user)
    puts "\e[H\e[2J"
    artist_selection = $prompt.select("❤ ❤ ❤ Which artist would you like to choose? ❤ ❤ ❤") do | menu |
        menu.enum "."
        artists.each_with_index do | artist, index |
            menu.choice artist, index
        end
    end
    artist_information(current_user, artist_selection)
end