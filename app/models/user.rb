class User < ApplicationRecord
  extend FriendlyId
  friendly_id :blog_name, use: :slugged

  has_secure_password
  has_many :posts

  validates :blog_name,  presence: true
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true
  validates :password,   length: { in: 6..20 }
  
  def full_name
    "#{self.first_name.titleize} #{self.last_name.titleize}"
  end
end
