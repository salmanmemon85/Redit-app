class Community < ApplicationRecord
  mount_uploader :community_image, CommunityImageUploader
  belongs_to :user
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :posts, dependent: :destroy
  has_many :subscriptions
end
