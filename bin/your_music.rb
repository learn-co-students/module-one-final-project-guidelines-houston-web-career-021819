
def your_music

    your_music = $prompt.select('❤ ❤ ❤ What would you like to see? ❤ ❤ ❤') do |menu|
        menu.enum "."
        menu.choice "Your Songs", 1
        menu.choice "Your Playlists", 2
        menu.choice "Your Artists", 3
        menu.choice "Your Albums", 4
    end

    case your_music
    when 1
        puts songs.map { | song | song.title }
        choose_song
    when 2
        playlists = Playlist.all.select { | playlist | playlist.user_id == current_user.id}
        puts playlists.map { | playlist | playlist.name }
        # choose_playlist
    when 3
        puts artists = songs.map { | song | song.artist }
        choose_artist
    when 4
        puts albums = songs.map { | song | song.album }
    end
end