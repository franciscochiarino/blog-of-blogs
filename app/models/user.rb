class User < ApplicationRecord
  extend FriendlyId
  friendly_id :blog_name, use: :slugged

  has_secure_password

  validates :blog_name,  presence: true
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true
  validates :password,   length: { in: 6..20 }
end
