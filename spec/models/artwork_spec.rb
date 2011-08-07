require File.dirname(__FILE__) + '/../spec_helper'

describe Artwork do
  it "should be valid" do
    Artwork.make.should be_valid
  end
end
