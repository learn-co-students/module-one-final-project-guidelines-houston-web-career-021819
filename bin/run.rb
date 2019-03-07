require_relative '../config/environment'


puts "Welcome to ZOLI POST! A place to create and motivate."


########### Main Menu
prompt = TTY::Prompt.new
choices = {"[1] Send a new postcard" => -> do send_a_new_post_card end, 
           "[2] Check your balance" => -> do check_your_balance end, 
           "[3] Top up your credit" => -> do top_up_your_credit end, 
           "[4] Check your order history" => -> do check_your_order_history end}.each {|option, methods| option}
selection = prompt.select("What would you like to do?", choices)













