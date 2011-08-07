class ArtistsController < ApplicationController
  before_filter :authenticate_artist! 
  def show
    @artist = current_artist
  end

end
