require_relative '../config/environment'

#Collect user information

def log_in
    prompt = TTY::Prompt.new
    heart = prompt.decorate('❤ ', :magenta)
    login = prompt.collect do
       key(:username).ask('Username:')
       key(:password).mask('Password:', mask: heart)
    end

    current_user = User.find_by(username: login[:username], password: login[:password])

    if !current_user
       puts "Invalid Login"

    else
        
        # menu_selection = prompt.select('❤What would you like to do today?❤') do |menu|
        #    menu.enum "."
        #    menu.choice "", 1
        #    menu.choice "Your Playlists", 2
        #    menu.choice "Your Artists", 3
        #    menu.choice "Your Albums", 4
        # end


        first_selection = prompt.select('❤ ❤ ❤ What would you like to see? ❤ ❤ ❤') do |menu|
           menu.enum "."
           menu.choice "Your Songs", 1
           menu.choice "Your Playlists", 2
           menu.choice "Your Artists", 3
           menu.choice "Your Albums", 4
        end

        songs = Song.all.select { | song | song.user_id == current_user.id}

        case first_selection
        when 1
            
            puts songs.map { | song | song.title }

            song_selection = prompt.select("❤ ❤ ❤ What song would you like to choose? ❤ ❤ ❤") do | menu |
                menu.enum "."
                songs.each_with_index do | song, index |
                    menu.choice song.title, index
                end
            end

            song_information = prompt.select('❤ ❤ ❤ What information would you like to see for this song? ❤ ❤ ❤') do |menu|
                menu.enum "."
                menu.choice "Artist", 1
                menu.choice "Album", 2
                menu.choice "Genre", 3 
            end

            case song_information
            when 1
                puts songs[song_selection].artist
            when 2
                puts songs[song_selection].album
            when 3
                puts songs[song_selection].genre
            end
        
        when 2
            playlists = Playlist.all.select { | playlist | playlist.user_id == current_user.id}
            puts playlists.map { | playlist | playlist.name }

            playlist_selection = prompt.select("❤ ❤ ❤ Which playlist would you like to know? ❤ ❤ ❤") do | menu |
                menu.enum "."
                playlists.each_with_index do | playlist, index |
                    menu.choice playlist.name, index
                end
            end
            puts playlist_selection        
#TODO: get/ puts all songs belong to this playlist

        when 3
            puts artists = songs.map { | song | song.artist }

            artist_selection = prompt.select("❤ ❤ ❤ Which artist would you like to choose? ❤ ❤ ❤") do | menu |
                menu.enum "."
                artists.each_with_index do | artist, index |
                    menu.choice artist, index
                end
            end

            songs_for_artist = songs.select {| song | song.artist == artists[artist_selection]}

            albums_for_artist = songs.select {| song | song.artist == artists[artist_selection]}
            
            artist_information = prompt.select('❤ ❤ ❤ What information would you like to see for this artist? ❤ ❤ ❤') do |menu|
                menu.enum "."
                menu.choice "Songs", 1
                menu.choice "Albums", 2
            end
            
            case artist_information
            when 1
                puts  songs_for_artist.map {| song | song.title} 
            when 2
                puts  albums_for_artist.map {| song | song.album} 
            end


        when 4
            puts albums = songs.map { | song | song.album }
            album_selection = prompt.select("❤ ❤ ❤ Which album would you like to know? ❤ ❤ ❤") do | menu |
                menu.enum "."
                albums.each_with_index do | album, index |
                    menu.choice album, index
                end
            end

            songs_for_album = songs.select {| song | song.album == albums[album_selection]}

            artists_for_album = songs.select {| song | song.album == albums[album_selection]}
            
            album_information = prompt.select('❤ ❤ ❤ What information would you like to know for this album? ❤ ❤ ❤') do |menu|
                menu.enum "."
                menu.choice "Songs", 1
                menu.choice "Artists", 2
            end
            
            case album_information
            when 1
                puts  songs_for_album.map {| song | song.title} 
            when 2
                puts  artists_for_album.map {| song | song.artist} 
            end



        end



    end

end

log_in