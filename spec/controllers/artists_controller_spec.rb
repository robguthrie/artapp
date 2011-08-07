require File.dirname(__FILE__) + '/../spec_helper'

describe ArtistsController do
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Artist.make!.id
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    artist = Artist.make
    artist.should be_valid
    post :create, :artist => artist.attributes
    response.should be_redirect
  end

  it "create action should render new when model is invalid" do
    Artist.any_instance.stubs(:valid?).returns(false)
    post :create, :artist => {}
    response.should render_template(:new)
  end

  it "edit action should render edit template" do
    get :edit, :id => Artist.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Artist.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Artist.first
    response.should redirect_to(artist_url(assigns[:artist]))
  end

  it "destroy action should destroy model and redirect to index action" do
    artist = Artist.first
    delete :destroy, :id => artist
    response.should redirect_to(artists_url)
    Artist.exists?(artist.id).should be_false
  end
end
