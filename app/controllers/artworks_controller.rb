class ArtworksController < ApplicationController
  before_filter :authenticate_artist!
  inherit_resources
  belongs_to :artist, :optional => true 
  def create
    create!{artist_path}
  end

  def begin_of_association_chain
    current_artist
  end
end
