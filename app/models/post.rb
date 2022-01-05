class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

  validates :title, length: { in: 4..20 }
  validates :body,  length: { in: 6..10000 }
end
