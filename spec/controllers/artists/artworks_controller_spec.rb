require 'spec_helper'

describe Artists::ArtworksController do
  render_views
  before :each do
    @artist = Artist.make!
    sign_in @artist
  end

  it "requires a signed in artist" do
    sign_out @artist
    get :index
    response.should be_redirect
  end

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    artwork = Artwork.make!(:artist => @artist)
    get :show, :id => artwork.id
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    artist = Artist.make!
    artwork = Artwork.make
    post :create, :artwork => artwork.attributes
    response.should be_redirect
  end

  it "edit action should render edit template" do
    get :edit, :id => Artwork.make!(:artist => @artist).id
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    put :update, :id => Artwork.make!(:artist => @artist).id
    response.should redirect_to(artists_artwork_url(assigns[:artwork]))
  end

  it "destroy action should destroy model and redirect to index action" do
    artwork = Artwork.make!(:artist => @artist)
    delete :destroy, :id => artwork.id
    response.should redirect_to(artists_artworks_url)
    Artwork.exists?(artwork.id).should be_false
  end
end
