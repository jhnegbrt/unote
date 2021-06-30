class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}
  validates :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true

  attr_reader :password

  after_initialize :ensure_session_token

  def self.find_by_credentials(username, password)
    @user = User.find_by(username: username)
    if @user.nil || @user.is_password(password) == false
      #error handling in here
      
    else
      @user
    end
  end

  def password=(password)
    # @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def check_password(password)
    BCrypt::Password.new(password_digest).is_password(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

end