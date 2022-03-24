class RemoveMainImageFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :main_image, :string
  end
end
