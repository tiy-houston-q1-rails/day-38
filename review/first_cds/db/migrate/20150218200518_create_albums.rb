class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :buyer
      t.string :photo_url
      t.integer :year
      t.string :status

      t.timestamps null: false
    end
  end
end
