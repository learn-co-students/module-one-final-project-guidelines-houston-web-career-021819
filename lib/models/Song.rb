class Song < ActiveRecord::Base

    has_many :users
    has_many :playlists, through: :users

    

end