class User < ApplicationRecord
  has_many :availabilities
  has_many :requests

  validates :name, presence: true, length: {maximum: 50}
  validates :password, presence: true, length: {maximum: 50}
  validates :defaultBid, presence: true, length: {maximum: 10}

  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
            presence: true,
            length: {maximum: 100},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}


  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end
