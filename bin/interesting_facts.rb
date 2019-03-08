def interesting_facts(current_user)

    fact_selection = $prompt.select('❤ ❤ What fact would you like to see? ❤ ❤') do | menu |
        menu.enum "."
        menu.choice "Person with most songs", 1;
        menu.choice "Person with most albums", 2;
        menu.choice "The longest song in this database", 3
        menu.choice "The biggest playlist in this database", 4
    end

    case fact_selection
    when 1
        user_with_most_songs(current_user)
    when 2
        user_with_most_albums(current_user)
    when 3
        longest_song(current_user)
    when 4
        biggest_playlist(current_user)
    end
end