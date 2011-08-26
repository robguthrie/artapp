class Bid < ActiveRecord::Base
  attr_accessible :amount
  belongs_to :artwork
  belongs_to :bidder
  validates_presence_of :amount, :bidder, :artwork
  validates_numericality_of :amount
  validate :amount_is_greater_than_reserve

  private
  def amount_is_greater_than_reserve
    if artwork.auction_reserve_price and (artwork.auction_reserve_price > amount)
      errors[:amount] = 'is less that the reserve'
    end
  end
end
