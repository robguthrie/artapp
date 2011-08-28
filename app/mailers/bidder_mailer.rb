class BidderMailer < ActionMailer::Base
  default :from => "auction@concernedcitizens.co.nz"

  def out_bid_notification(bid)
    @bid = bid
    @artwork = bid.artwork
    @artist = bid.artwork.artist
    @bidder = bid.bidder
    mail :to => bid.bidder.email, 
         :subject => 'You have been out bid. [Concerned Citizens - Unrecognised Auction]'
  end

  def winner_email(artwork)
    @artwork = artwork
    @bid = @artwork.leading_bid
    @bidder = @bid.bidder
    mail :to => @bidder.email,
         :subject => "You placed the winning bid on #{@artwork.name} by #{@artwork.artist.name} [Concerned Citizens - Unrecognised Auction]"
  end
end
