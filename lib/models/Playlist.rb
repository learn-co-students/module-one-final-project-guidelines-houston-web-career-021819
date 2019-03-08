class Playlist < ActiveRecord::Base

    has_many :users
    has_many :songs, through: :users

    def playlist
        User.all.select { | user | user.playlist_id == self.id}
    end
    
    def playlist_length
        self.playlist.length
    end

end