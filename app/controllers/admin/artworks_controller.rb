class Admin::ArtworksController < AdminController
  def index
    @total_raised = 0
    collection.each do |a|
      if a.auction_physical and a.leading_bid
        if a.auction_reserve_price.nil? or a.leading_bid.amount >= a.auction_reserve_price
          @total_raised += a.leading_bid.amount
        end
      end
    end
    index!
  end

  def email_winner
    unless resource.winner_emailed
      BidderMailer.winner_email(resource).deliver
      resource.winner_emailed = true
      resource.save
      flash[:notice] = "Emailed #{resource.leading_bid.bidder.email} about #{resource.name}"
    else
      flash[:error] = "Already Emailed winner"
    end
    redirect_to admin_artworks_path
  end
end
