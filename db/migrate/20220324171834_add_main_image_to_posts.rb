class AddMainImageToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :main_image, :string
  end
end
