require 'spec_helper'

describe Admin::ArtworksController do
  before :each do
    request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64("admin:stayconcerned420")
  end

  it "emails winning bidder" do
    @artwork = Artwork.make!
    @bidder = Bidder.make!
    @bid = Bid.make!(:bidder => @bidder, :artwork => @artwork)
    puts @bid.inspect
    puts @bid.valid?.inspect
    post :email_winner, :id => @artwork.id
    puts response.methods - Object.methods
    puts response.body
    response.should be_redirect
    last_email.to.should include @bidder.email
    last_email.body.should =~ /#{@artwork.artist.name}/
    last_email.body.should =~ /#{@artwork.name}/
  end
end
