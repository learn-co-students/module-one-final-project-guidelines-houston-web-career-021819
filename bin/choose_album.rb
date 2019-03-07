def choose_album(current_user)
    albums = users_songs(current_user).map { | song | song.album }
    #puts "\e[H\e[2J"
    album_selection = $prompt.select("❤ ❤ ❤ Which album would you like to choose? ❤ ❤ ❤") do | menu |
        menu.enum "."
        albums.each_with_index do | album, index |
            menu.choice album, index
        end
    end
    selected_album = albums[album_selection]
    album_information(current_user, selected_album)
end