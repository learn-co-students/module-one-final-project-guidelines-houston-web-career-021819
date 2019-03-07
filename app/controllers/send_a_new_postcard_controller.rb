def send_a_new_post_card
    ### Get user name
    prompt = TTY::Prompt.new
    name = prompt.ask("What is your name?")

    
    sender = Sender.create(name:"#{name}")





    ### Create a postcard
    prompt = TTY::Prompt.new
    chosen_category = prompt.select("[Choose a type]  Who are you trying to motivate?", %w(Parent Grandparent Friend Colleague Spouse))
    
    prompt = TTY::Prompt.new
    chosen_size = prompt.select("[Choose a size]  What size suits your fancy?", %w(Small($2.50) Medium($3.00) Large($3.50) ))
   

    ### Get total cost
    if chosen_size.include?("Small")
        total_cost = 2.5
    elsif chosen_size.include?("Medium")
        total_cost = 3.0
    else
        total_cost = 3.5
    end



    postcard = Postcard.create(category: "#{chosen_category}", size:"#{chosen_size}", cost:total_cost)
    
    #postcard.member = member
    #member.postcards
end