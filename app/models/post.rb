class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  belongs_to :user
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :community
  has_many :comments, dependent: :destroy
  has_rich_text :description
end
