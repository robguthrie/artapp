require 'spec_helper'

describe ArtworksController do

  it "indexes all artworks" do
    get :index
    response.should be_success
  end

  it "shows an artwork" do
    artwork = Artwork.make!
    get :show, :id => artwork.id
    response.should be_success
  end
end
