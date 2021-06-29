class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}
  validates :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def self.

  def password=(password)
    @password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token
  end

  def ensure_session_token
    session_token ||= SecureRandom.urlsafe_base64
  end

end