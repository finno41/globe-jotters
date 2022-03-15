class ChangeColumnNameOnPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :user_id_id, :user_id
    rename_column :posts, :area_id_id, :area_id
  end
end
