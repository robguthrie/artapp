require 'spec_helper.rb'
describe "artists" do
  it "can sign up" do
    visit root_url
    click_on 'register here'
    artist = Artist.make
    fill_in 'Name', :with => artist.name
    fill_in 'Description', :with => artist.description
    fill_in 'Phone', :with => artist.phone
    fill_in 'Email', :with => artist.email
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Create Artist'
    page.should have_content('You have signed up successfully')
    page.should have_content('Add artwork')
    click_on "Add artwork"
    artwork = Artwork.make
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
