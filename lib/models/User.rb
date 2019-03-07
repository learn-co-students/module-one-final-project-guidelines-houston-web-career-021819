class User < ActiveRecord::Base

    has_many :songs
    belongs_to :playlist
    belongs_to :song

    def number_of_songs
        self.songs.length
    end

    # def number_of_albums
    #     self.songs.album.length
    # end
end