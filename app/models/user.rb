class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  has_secure_password validations: false

  validate :username, presence: true, uniqueness: true
  validate :password, presence: true, on: :create, length: {minium: 3}
end