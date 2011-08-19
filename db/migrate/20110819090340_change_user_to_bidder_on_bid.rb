class ChangeUserToBidderOnBid < ActiveRecord::Migration
  def change
    rename_column :bids, :user_id, :bidder_id
  end
end
