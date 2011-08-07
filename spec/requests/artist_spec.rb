describe "artists" do
  it "can sign up" do
    artist = Artist.make
    visit new_artist_path
    fill_in 'Name', :with => artist.name
    fill_in 'Description', :with => artist.description
    fill_in 'Phone', :with => artist.phone
    fill_in 'Email', :with => artist.email
    click_on 'Create Artist'
    page.should have_content('Artist was successfully created.')
  end

  it "can upload artworks" do
    artist = Artist.make!
    artwork = Artwork.make
    visit new_artist_artwork_path(artist)
    fill_in 'Name', :with => artwork.name
    fill_in 'Description', :with => artwork.description
    attach_file('Image', Rails.root.join('spec','requests', 'image.jpg'))
    check 'Downloadable'
    check 'Physical being delivered'
    #select 'Wellington - Garrett St', :from => 'Delivering to'
    click_on 'Create Artwork'
    page.should have_content('Artwork was successfully created.')
  end
end
