class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.references :album, index: true

      t.timestamps
    end
  end
end
