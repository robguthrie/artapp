describe "signing up as an artist" do
  it "lets artists sign up" do
    artist = Artist.make
    visit new_artist_path
    fill_in 'Name', :with => artist.name
    fill_in 'Description', :with => artist.description
    fill_in 'Phone', :with => artist.phone
    fill_in 'email', :with => artist.email
    click_on 'Submit'
    page.should contain 'created artist'
  end

  it "lets artists upload artworks" do
    artist = Artist.make!
    artwork = Artwork.make
    visit new_artist_artwork_path(artist)
    fill_in 'Name', :with => artwork.name
    fill_in 'Description', :with => artwork.description
    attach_file('Image', 'image.jpg')
    check 'Downloadable'
    check 'Physical being delivered'
    select 'Wellington - Garrett St', :from => 'Delivering to'
    click_on 'Submit'
    page.should contain 'created artwork'
  end
end
