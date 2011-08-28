class Admin::BiddersController < ApplicationController
  def index
    @bidders = Bidder.all
  end

end
