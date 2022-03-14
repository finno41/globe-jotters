class CreateAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.references :country_id, null: false, foreign_key: true
      t.string :postcode

      t.timestamps
    end
  end
end
