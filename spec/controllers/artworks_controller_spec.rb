require File.dirname(__FILE__) + '/../spec_helper'

describe ArtworksController do
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    artist = Artist.make!
    artwork = Artwork.make!(:artist => artist)
    get :show, :artist_id => artist.id, :id => artwork.id
    response.should render_template(:show)
  end

  it "new action should render new template" do
    artist = Artist.make!
    get :new, :artist_id => artist.id
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    artist = Artist.make!
    artwork = Artwork.make
    post :create, :artist_id => artist.id, :artwork => artwork.attributes
    response.should be_redirect
  end

  it "edit action should render edit template" do
    get :edit, :id => Artwork.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Artwork.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Artwork.first
    response.should redirect_to(artwork_url(assigns[:artwork]))
  end

  it "destroy action should destroy model and redirect to index action" do
    artwork = Artwork.first
    delete :destroy, :id => artwork
    response.should redirect_to(artworks_url)
    Artwork.exists?(artwork.id).should be_false
  end
end
