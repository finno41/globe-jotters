class ChangeColumnNameOnPosts3 < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :area_id_id, :area_id
  end
end
