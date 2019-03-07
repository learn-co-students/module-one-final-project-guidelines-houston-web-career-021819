def main_menu(current_user)
    #puts "\e[H\e[2J"
    menu_selection = $prompt.select('❤ What would you like to do today? ❤') do |menu|
        menu.enum "."
        menu.choice "Your Music", 1
        menu.choice "Your Statistics", 2
        menu.choice "Suggestion", 3
        menu.choice "Interesting Facts", 4
    end

    case menu_selection
    when 1
        your_music(current_user)
    when 2
        your_stats(current_user)
    when 3
        suggestions(current_user)
    when 4
        interesting_facts(current_user)
    end
end