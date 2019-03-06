def welcome
    puts "\e[H\e[2J"
    welcome = $prompt.select('❤ WELCOME to Your Personal Music Management System)! What do you want to do today? ❤') do |menu|
       menu.enum "."
       menu.choice "Log In", 1
       menu.choice "Create a New Account", 2
       menu.choice "Exit. I don't want to do anything today. :(", 3
    end
    if welcome == 1
        log_in()
    elsif welcome == 2
        create_account()
    elsif welcome == 3
        return
    end
end