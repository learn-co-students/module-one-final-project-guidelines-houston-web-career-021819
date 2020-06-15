class Hobby < ActiveRecord::Base
    has_many :seniors, through: :matches
    has_many :friends, through: :matches
end