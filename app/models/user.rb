class User < ApplicationRecord
  has_secure_password

  validates :blog_name,  length: { minimum: 4 }
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true
  validates :password,   length: { in: 6..20 }
end
