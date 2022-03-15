class ChangeColumnNameOnImages < ActiveRecord::Migration[6.1]
  def change
    rename_column :images, :post_id_id, :post_id
  end
end
