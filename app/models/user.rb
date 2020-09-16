class User < ApplicationRecord
    validates :username, uniqueness:true, length: { in:4..12 }, presence: true
    validates :email, uniqueness:true, presence: true
    validates :password, length: { in:6..16 }, presence: true

    has_many :posts

    def new
        @user = User.new
    end
end
