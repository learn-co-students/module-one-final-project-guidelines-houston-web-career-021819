class Match < ActiveRecord::Base
    belongs_to :senior
    belongs_to :friend
    belongs_to :hobby
end