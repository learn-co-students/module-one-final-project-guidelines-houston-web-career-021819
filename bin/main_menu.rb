def main_menu(current_user)
    #puts "\e[H\e[2J"
    main_menu = $prompt.select('❤What would you like to do today?❤') do |menu|
    menu.enum "."
    menu.choice "Your Music", 1
    menu.choice "Your Statistics", 2
    menu.choice "Suggestion", 3
    menu.choice "Interesting Facts", 4
    end
end