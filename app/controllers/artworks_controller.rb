class ArtworksController < ApplicationController
  inherit_resources
  def index
    @artists = Artist.featured.order(:name)
    @total_bids = Bid.all.count
    @total_raised = 0
    collection.each do |a|
      if a.auction_physical and a.leading_bid
        if a.auction_reserve_price.nil? or a.leading_bid.amount >= a.auction_reserve_price
          @total_raised += a.leading_bid.amount
        end
      end
    end
  end
end
