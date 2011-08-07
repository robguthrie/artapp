class AddReserveToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :auction_physical, :boolean
    add_column :artworks, :auction_reserve_price, :float
  end
end
