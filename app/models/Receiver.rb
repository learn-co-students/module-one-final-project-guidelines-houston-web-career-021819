class Receiver < ActiveRecord::Base
    has_many :postcards
    has_many :members, through: :postcards
end