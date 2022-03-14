class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :postcode
      t.references :user_id, null: false, foreign_key: true
      t.date :date_visited
      t.references :area_id, null: false, foreign_key: true
      t.boolean :deleted

      t.timestamps
    end
  end
end
