class Member < ActiveRecord::Base
    has_many :postcards
    has_many :receivers, through: :postcards
    after_initialize :init

    def init
        self.balance ||= 5.0
    end

    def full_name
        prompt = TTY::Prompt.new
        full_name = prompt.ask('What is your name?')
        full_name
    end
end