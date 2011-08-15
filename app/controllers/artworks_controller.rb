class ArtworksController < ApplicationController
  inherit_resources
  def index
    @artists = Artist.featured
  end
end
