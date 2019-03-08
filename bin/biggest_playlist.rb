def biggest_playlist(current_user)
    biggest_playlist_instance = Playlist.all.max_by(&:playlist_length)
    biggest_playlist = User.all.select { | user | user.playlist_id == biggest_playlist_instance.id}
    
    biggest_playlist_length = biggest_playlist.length
    account_biggest_playlist = Account.all.select { | account | account.id == biggest_playlist_instance.account_id}[0]
    
    puts "❤ ❤ ❤ The biggest playlist is '#{biggest_playlist_instance.name}'. ❤ ❤ ❤"
    puts "❤ ❤ ❤ It has #{biggest_playlist_length} songs. ❤ ❤ ❤"
    puts "❤ ❤ ❤ It belongs to #{account_biggest_playlist.username}. ❤ ❤ ❤"
    main_menu(current_user)

end