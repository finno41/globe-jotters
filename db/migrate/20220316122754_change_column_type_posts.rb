class ChangeColumnTypePosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :type, :category
  end
end
