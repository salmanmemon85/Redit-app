class AddSlugToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :slug, :string
  end
end
