def user_with_most_songs(current_user)

    most_songs = User.all.max_by(&:number_of_songs)
    puts most_songs.username
    main_menu(current_user)
end