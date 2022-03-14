class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :spotify_link
      t.references :area_id, null: false, foreign_key: true
      t.string :artist
      t.string :album_name
      t.string :track_name

      t.timestamps
    end
  end
end
