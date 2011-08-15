class Artist < ActiveRecord::Base
  attr_accessible :name, :description, :phone, :email, :password, :password_confirmation
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :email
  validates_presence_of :name, :email
  has_many :artworks
  scope :featured, where(:featured => true)
end
