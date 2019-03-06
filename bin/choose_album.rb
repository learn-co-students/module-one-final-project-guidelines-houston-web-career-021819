def choose_album
    album_selection = $prompt.select("❤ ❤ ❤ Which album would you like to know? ❤ ❤ ❤") do | menu |
        menu.enum "."
        albums.each_with_index do | album, index |
            menu.choice album, index
        end
    end
    album_information
end