require File.dirname(__FILE__) + '/../spec_helper'

describe Artist do
  it "should be valid" do
    Artist.make.should be_valid
  end
end
