def log_in
   # puts "\e[H\e[2J"
   
   heart = $prompt.decorate('❤ ', :magenta)
   login = $prompt.collect do
      key(:username).ask('Log in now! Please enter your username:')
      key(:password).mask('Please enter your password:', mask: heart)
   end
   
   current_account = Account.find_by(username: login[:username], password: login[:password])
    
   if !current_account
      puts "Invalid Login. Back to the Welcome menu."
      welcome()
   else 
      current_user = User.find_by(account_id: current_account.id)
      if !current_user
         puts "❤ Are you a new user? You don't have any songs yet. Back to Welcome menu. ❤"
         welcome()
      else
         main_menu(current_user)
      end
   end
end