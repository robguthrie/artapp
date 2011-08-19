require "spec_helper"
include Warden::Test::Helpers

describe "signing up as a bidder" do
  it "lets users sign up as bidders" do
    artist = Artist.make!
    artwork = Artwork.make!(:artist => artist)
    
    visit root_path
    click_link "Bidder sign up"
    fill_in 'Name', :with => "rupert james"
    fill_in 'Email', :with => 'erb@jones.com'
    fill_in 'Phone', :with => '02171717'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button "Sign up"
    page.should have_content("signed up successfully")
    #visit root_path
    #click_link "artwork_#{artwork.id}"
    #click_link 'Place bid'
    #fill_in 'Amount', :with => '10.0'
    #click_button 'Place bid'
    #page.should contain('Bid was successfully created')
  end
end
