class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}
  validates :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def password=(password)
    @password_digest = BCrypt::Password.create(password)
  end

end