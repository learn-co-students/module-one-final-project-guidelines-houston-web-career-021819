def interesting_facts(current_user)

    fact_selection = $prompt.select('What fact would you like to see?') do | menu |
    menu.enum "."
    menu.choice "Person with the most songs", 1;
    menu.choice "Person with the most albums", 2;
    end

    case fact_selection
    when 1
        user_with_most_songs(current_user)
    when 2
        user_with_most_albums(current_user)
    end
end