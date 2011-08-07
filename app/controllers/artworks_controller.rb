class ArtworksController < ApplicationController
  belongs_to :artist, :optional => true 
  def create
    create!{@artist}
  end
end
