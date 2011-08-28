class Artwork < ActiveRecord::Base
 image_accessor :image 
 belongs_to :artist
 has_many :bids
 validates_presence_of :artist, :name

 def next
   Artwork.joins(:artist).where('artworks.id > ?', id).order('id').first
 end

 def prev
   Artwork.joins(:artist).where('artworks.id < ?', id).order('id').last
 end

 def leading_bid 
   bids.where('created_at <= ?', DateTime.parse("2011-08-26 20:00:00 NZST")).order('amount desc').first
 end

end
