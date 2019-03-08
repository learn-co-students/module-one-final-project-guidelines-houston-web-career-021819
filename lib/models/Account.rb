class Account < ActiveRecord::Base

    belongs_to :user
    belongs_to :song
    belongs_to :playlist
    has_many :songs
    
    def accounts_songs
        Song.all.select do | song |
            song.account_id == self.id
        end
    end

    def accounts_albums
        self.accounts_songs.map do | song |
            song.album
        end
    end
    
end