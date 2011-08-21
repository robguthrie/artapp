class Admin::ArtworksController < AdminController
  def index
    @total_raised = 0
    collection.each do |a|
      if a.auction_physical and a.leading_bid
        if a.leading_bid.amount >= a.auction_reserve_price
          @total_raised += a.leading_bid.amount
        end
      end
    end
    index!
  end
end
