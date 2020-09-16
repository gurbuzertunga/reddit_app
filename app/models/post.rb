class Post < ApplicationRecord
    validates :title, uniqueness:true, presence: true
    validates :body, presence: true

    belongs_to :user
    has_many :comments

    def new
        @post = Post.new
    end
end
