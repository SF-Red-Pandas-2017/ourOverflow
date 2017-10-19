class Question < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  belongs_to :user
end
