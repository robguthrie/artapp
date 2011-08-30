require 'spec_helper'

describe Admin::BidsController do
  it "shows late bids" do
    get :index, :late => 'true'
  end
end
