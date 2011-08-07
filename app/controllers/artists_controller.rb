class ArtistsController < ApplicationController
  def create
    create!{new_artist_artwork_path(@artist)}
  end
end
