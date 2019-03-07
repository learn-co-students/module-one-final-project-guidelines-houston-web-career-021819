class User < ActiveRecord::Base

    belongs_to :song
    belongs_to :playlist
    has_one :account

end