class AddDimensionsToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :dimensions, :text
  end
end
