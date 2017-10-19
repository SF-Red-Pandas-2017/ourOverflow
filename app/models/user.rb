require 'bcrypt'
class User < ActiveRecord::Base
  has_many :votes, as: :voteable
  has_many :questions
  has_many :comments
  has_many :answers
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
