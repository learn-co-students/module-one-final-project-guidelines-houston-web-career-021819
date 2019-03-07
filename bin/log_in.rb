def log_in
   # puts "\e[H\e[2J"
   
   heart = $prompt.decorate('❤ ', :magenta)
   login = $prompt.collect do
      key(:username).ask('Log in now! Please enter your username:')
      key(:password).mask('Please enter your password:', mask: heart)
   end
   
   current_user = User.find_by(username: login[:username], password: login[:password])
    
   if !current_user
      puts "Invalid Login. Back to the Welcome menu."
      welcome()
   else
      main_menu(current_user)
   end
end