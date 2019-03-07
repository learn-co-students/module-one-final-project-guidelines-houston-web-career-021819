
def create_account
    user_name = $prompt.ask('Please choose a new username:')
    password = $prompt.ask('Please enter your password:')
    confirm_password = $prompt.mask('Confirm your password:')

    if password == confirm_password
        puts "Password Confirmed."
        Account.create(username: user_name, password: password)
        puts "YAY! New Account Created. "
    else
        puts "Password does not match. Please enter your password again."
        reenter_password = $prompt.ask('Reenter your password:')
        if reenter_password == password
            puts "Password Confirmed."
            Account.create(username: user_name, password: password)
            puts "YAY! New Account Created. "
            # import_csv()
        else
            puts "Wrong Password again. Try to create a new acount."
        end
    end
    welcome()
end