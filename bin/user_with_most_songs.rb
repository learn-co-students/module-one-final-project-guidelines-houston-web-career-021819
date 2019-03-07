def user_with_most_songs(current_user)
 
    most_songs = Account.all.max_by(&:accounts_songs)
    puts most_songs.username
    main_menu(current_user)
end