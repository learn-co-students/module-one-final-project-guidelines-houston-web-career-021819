def choose_album(current_user)
    puts "\e[H\e[2J"
    album_selection = $prompt.select("❤ ❤ ❤ Which album would you like to know? ❤ ❤ ❤") do | menu |
        menu.enum "."
        albums.each_with_index do | album, index |
            menu.choice album, index
        end
    end
    album_information(current_user, album_selection)
end