class Artist < ActiveRecord::Base
  attr_accessible :name, :description, :phone, :email
  validates_uniqueness_of :email
  validates_presence_of :name, :email
  has_many :artworks
end
