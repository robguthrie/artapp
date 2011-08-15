class AddFeaturedToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :featured, :boolean, :allow_null => false, :default => true
  end
end
