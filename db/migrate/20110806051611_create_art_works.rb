class CreateArtWorks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :artist_id
      t.string :name
      t.text :description
      t.string :image_uid
      t.string :image_name
      t.boolean :downloadable
      t.boolean :physical_being_delivered
      t.string :delivering_to

      t.timestamps
    end
  end
end
