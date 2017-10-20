require 'bcrypt'
class User < ActiveRecord::Base
  has_many :votes, as: :voteable
  has_many :questions
  has_many :comments
  has_many :answers

  validates :username, :password_hash, presence: true
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, new_password)
    user = User.find_by(username: username)
    if user && user.password == new_password
      user
    else
      nil
    end
  end

  def login?(session)
    if session[:id]
      true
    else
      false
    end
  end
end
