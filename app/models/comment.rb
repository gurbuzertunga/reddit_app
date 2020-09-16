class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user, presence: true
  validates :post, presence: true

  belongs_to :user
  belongs_to :post

  def new
    @comment = Comment.new
  end
end
