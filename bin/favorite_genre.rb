
def favorite_genre(current_user)
    genres = users_songs(current_user).map { | song | song.genre}
    listed_genres = {}
    keys = genres.uniq
    keys.each do | key |
        value = genres.count(key)
        listed_genres[key] = value
    end
    favorite_genre = listed_genres.key(listed_genres.values.max)
    main_menu(current_user)
end