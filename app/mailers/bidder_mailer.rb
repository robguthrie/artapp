class BidderMailer < ActionMailer::Base
  default from: "system@concernedcitizens.co.nz"

  def out_bid_notification(bid)
    @bid = bid
    @artwork = bid.artwork
    @artist = bid.artwork.artist
    @bidder = bid.bidder
    mail :to => bid.bidder.email, 
         :subject => 'You have been out bid. [Concerned Citizens - Unrecognised Auction]'
  end
end
