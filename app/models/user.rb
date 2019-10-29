class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  has_many :messages
  has_secure_password
end
