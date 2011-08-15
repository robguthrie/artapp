class HomeController < ApplicationController
  def index
    @artists = Artist.includes(:artworks).all
  end
end
