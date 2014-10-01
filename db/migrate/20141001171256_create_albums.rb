class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.references :artist, index: true

      t.timestamps
    end
  end
end
