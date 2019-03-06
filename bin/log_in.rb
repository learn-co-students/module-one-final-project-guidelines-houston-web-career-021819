
def log_in
   
   heart = $prompt.decorate('❤ ', :magenta)
   login = $prompt.collect do
      key(:username).ask('Username:')
      key(:password).mask('Password:', mask: heart)
   end
    
   current_user = User.find_by(username: login[:username], password: login[:password])
    
   if !current_user
      puts "Invalid Login"
   else
      your_music(current_user)
   end
    
end

