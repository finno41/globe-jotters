class ChangeColumnNameOnAreas < ActiveRecord::Migration[6.1]
  def change
    rename_column :areas, :country_id_id, :country_id
  end
end
