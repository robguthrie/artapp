class Artwork < ActiveRecord::Base
 image_accessor :image 
 belongs_to :artist
 validates_presence_of :artist, :name

 def next
   Artwork.where('id > ?', id).order('artist_id, id').first
 end

 def prev
   Artwork.where('id < ?', id).order('artist_id, id').last
 end
end
