class Artwork < ActiveRecord::Base
 image_accessor :image 
 belongs_to :artist
 validates_presence_of :artist, :name

 def next
   Artwork.joins(:artist).where('artworks.id > ?', id).order('artists.name, artworks.id').first
 end

 def prev
   Artwork.joins(:artist).where('artworks.id < ?', id).order('artists.name, artworks.id').last
 end
end
