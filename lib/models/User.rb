class User < ActiveRecord::Base

    has_many :songs
    belongs_to :playlist
    has_one :account
    belongs_to :song


    # def number_of_albums
    #     self.songs.album.length
    # end
end