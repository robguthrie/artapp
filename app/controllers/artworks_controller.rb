class ArtworksController < ApplicationController
  inherit_resources
  def index
    @artists = Artist.featured.order(:name)
  end
end
