def user_with_most_albums(current_user)

    most_albums = Account.all.max_by(&:accounts_albums)
    puts "❤ ❤ ❤ #{most_albums.username} ❤ ❤ ❤"
    main_menu(current_user)
end