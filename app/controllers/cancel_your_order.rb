def cancel_your_order
  puts ""
  
  puts sender.postcards

  puts ""
  puts "Here is your card:"
  puts ""

  

  
  puts "From💌: #{sender.name}"
  puts ""
  puts "To: #{receiver.name}"
  puts ""
  puts "Message: #{sender.postcards[0].message}"
  puts ""
  prompt = TTY::Prompt.new
  answer = prompt.yes?('Are you sure you want to cancel?')
  # binding.pry
  if answer
     Postcard.destroy(1)
     puts "Sorry you don't like the card..."
  else
    prompt = TTY::Prompt.new
    choices = {"[1] Send a new postcard" => -> do send_a_new_post_card end, 
               "[2] View postcard" => -> do view_postcard end, 
               "[3] Revise your postcard" => -> do revise_your_postcard end, 
               "[4] Cancel your order" => -> do cancel_your_order end}.each {|option, methods| option}
    selection = prompt.select("What would you like to do now #{sender.name.split(" ")[0]}?", choices)
  end

end