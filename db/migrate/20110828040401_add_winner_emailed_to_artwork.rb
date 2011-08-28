class AddWinnerEmailedToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :winner_emailed, :boolean, :default => false, :allow_null => false
  end
end
