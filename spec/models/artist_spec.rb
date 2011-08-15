require File.dirname(__FILE__) + '/../spec_helper'

describe Artist do
  it "should be valid" do
    Artist.make.should be_valid
  end
  it "has scope of featured artists" do
    artist = Artist.make!(:featured => true)
    Artist.featured.should include(artist)
  end
end
