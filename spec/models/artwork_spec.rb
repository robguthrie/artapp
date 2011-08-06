require File.dirname(__FILE__) + '/../spec_helper'

describe Artwork do
  it "should be valid" do
    Artwork.new.should be_valid
  end
end
