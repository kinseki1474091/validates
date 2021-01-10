class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { in: 8..32 }
  validates :password, format: { with: /\A[a-z0-9]+\z/ }
  
  has_secure_password
end
