class Artwork < ActiveRecord::Base
 image_accessor :image 
 belongs_to :artist
 validates_presence_of :artist, :name
end
