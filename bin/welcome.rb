def welcome
    welcome = $prompt.select('❤ WELCOME to Your Personal Music Managment Application! What do you want to do today? ❤') do |menu|
       menu.enum "."
       menu.choice "Log In", 1
       menu.choice "Create a New Account", 2
    end
    if welcome = 1
        log_in()
    elsif welcome = 2
        create_account()
    end
end