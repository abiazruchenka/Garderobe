class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_save { self.name = name.downcase }
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  has_secure_password
  validates :password, length: { minimum: 6 }
end