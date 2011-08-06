class ArtworksController < ApplicationController
  belongs_to :artist, :optional => true 
end
