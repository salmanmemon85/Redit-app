class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :posts
         has_many :subscriptions
         has_many :communities, through: :subscriptions
        has_many :comments
        has_many :subscribed_posts, through: :communities, source: :posts


end
