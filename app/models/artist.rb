class Artist < ActiveRecord::Base
  attr_accessible :name, :description, :phone, :email
end
