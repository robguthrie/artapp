require 'spec_helper'

describe BidsController do
  before :each do
    @artwork = Artwork.make!
    @bidder = Bidder.make!
  end

  it "requres a logged in bidder" do
    get :new, :artwork_id => @artwork.id 
    response.should be_redirect
  end

  it "lets a logged in bidder place a bid on an artwork" do
    sign_in @bidder
    get :new, :artwork_id => @artwork.id 
    response.should be_success
    post :create, :artwork_id => @artwork.id, :bid => {:amount => 10.0}
    response.should be_redirect
  end
end
