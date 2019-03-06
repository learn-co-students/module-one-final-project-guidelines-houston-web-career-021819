def choose_song
    song_selection = prompt.select("❤ ❤ ❤ What song would you like to choose? ❤ ❤ ❤") do | menu |
        menu.enum "."
        songs.each_with_index do | song, index |
            menu.choice song.title, index
        end
    end
    song_information
end