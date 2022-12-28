class User < ApplicationRecord
  include Recoverable
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :login, :email, presence: true, length: {maximum: 30}
  validates :email, uniqueness: {case_sensitive: false}, format:     { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }

  validates :password_digest, length: {minimum: 6}
  has_secure_password

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
end
