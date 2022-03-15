class ChangeColumnNameOnSongs < ActiveRecord::Migration[6.1]
  def change
    rename_column :songs, :area_id_id, :area_id
  end
end
