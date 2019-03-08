def longest_song(current_user)

    max_song_length = Song.all.map {| song | song.duration_in_seconds}.max
    duration_mins = (max_song_length).to_f.round(6) / 1000 / 60
    arr = duration_mins.to_s.split('.')
    min = arr[0]
    sec = (((arr[1].to_i)  / 10000 * 60).round(2)).to_s.first(2).to_i
    longest_song = Song.all.select {| song | song.duration_in_seconds == max_song_length}[0]
    account = Account.all.select { | account | longest_song.account_id == account.id }[0]
    name = account.username

    puts "❤ ❤ The duration of the longest song in your database: #{min} minutes and #{sec} seconds. ❤ ❤"
    puts "❤ ❤ The title of the longest song in your database is '#{longest_song.title}'. ❤ ❤"
    puts "❤ ❤ The longest song in your database belongs to #{name}. ❤ ❤"    
    permission = $prompt.yes?("❤ ❤ Do you want to listen to the song now? ❤ ❤") do |q|
        q.suffix 'y/n'
    end
    case permission
    when false
        puts "Fine. Back to the Main Menu."       
        main_menu(current_user)
    when true
        system("open", "#{longest_song.url}")
        main_menu(current_user)
    end
end