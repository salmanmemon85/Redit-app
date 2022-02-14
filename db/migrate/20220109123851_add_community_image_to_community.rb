class AddCommunityImageToCommunity < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :community_image, :string
  end
end
