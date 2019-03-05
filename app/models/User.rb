class User < ActiveRecord::Base
    has_many :subjects, through: :interests
end

