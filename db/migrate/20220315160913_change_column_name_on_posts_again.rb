class ChangeColumnNameOnPostsAgain < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :user_id_id, :user_id
  end
end
