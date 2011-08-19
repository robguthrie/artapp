class BidsController < ApplicationController
  before_filter :authenticate_bidder! 
  inherit_resources
  belongs_to :artwork
  actions :new, :create
  def create
    build_resource
    @bid.amount = params[:bid][:amount]
    @bid.artwork = @artwork
    @bid.bidder = current_bidder
    create!
  end
end
