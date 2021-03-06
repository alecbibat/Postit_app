class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  
  has_secure_password validations: false
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end