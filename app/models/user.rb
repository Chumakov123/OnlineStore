class User < ApplicationRecord
  include Recoverable
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :login, :email, presence: true, length: {maximum: 30}
  validates :email, uniqueness: {case_sensitive: false}, format:     { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }

  validates :password_digest, length: {minimum: 6}
  has_secure_password validations: false
  validate :password_presence
  validates :password, confirmation: true, allow_blank: true,
            length: { minimum: 6, maximum: 70 }
  validate :password_complexity

  has_many :orders

  def digest(string)
    cost = if ActiveModel::SecurePassword
                .min_cost
             BCrypt::Engine::MIN_COST
           else
             BCrypt::Engine.cost
           end
    BCrypt::Password.create(string, cost: cost)
  end

  def password_complexity
    # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
    return if password.blank? || password =~ /(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/

    msg = 'complexity requirement not met. Length should be 6-70 characters and ' \
          'include: 1 uppercase, 1 lowercase, 1 digit and 1 special character'
    errors.add :password, msg
  end

  def password_presence
    errors.add(:password, :blank) if password_digest.blank?
  end
end
