class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true
  validates :defaultBid, presence: true
  
 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX }
                
end
