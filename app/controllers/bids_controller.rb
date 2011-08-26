class BidsController < ApplicationController
  before_filter :authenticate_bidder! 
  inherit_resources
  belongs_to :artwork
  actions :new, :create
  def create
    if Time.now > Chronic.parse("8 pm")
      flash[:error] = "Bidding has closed now."
      redirect_to root_path
    else
      build_resource
      @bid.amount = params[:bid][:amount]
      @bid.artwork = @artwork
      @bid.bidder = current_bidder
      if @artwork.leading_bid and @artwork.leading_bid.amount < @bid.amount and @artwork.leading_bid.bidder != @bid.bidder
        BidderMailer.out_bid_notification(@artwork.leading_bid).deliver!
      end
      create!
    end
  end
end
