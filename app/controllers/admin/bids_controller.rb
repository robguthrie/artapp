class Admin::BidsController < AdminController

  def index
    if params[:late]
      @bids = Bid.where('created_at > ?', Chronic.parse('2011-08-26 8pm'))
    end
    index!
  end
end
