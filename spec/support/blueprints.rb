require 'machinist/active_record'

Artist.blueprint do
  name { Faker::Name.name }
  email { Faker::Internet.email }
  phone { Faker::PhoneNumber.phone_number}
  description { Faker::Lorem.paragraphs }
  password { 'password'}
  password_confirmation { 'password'}
end

Artwork.blueprint do
  artist
  name { Faker::Name.name }
  description { Faker::Lorem.paragraphs }
  downloadable { true }
  auction_physical {true}
  auction_reserve_price {5.00}
  physical_being_delivered { true }
  delivering_to { "Wellington" }
end


Bidder.blueprint do
  name {"john"}
  email { Faker::Internet.email}
  password {'password'}
  password_confirmation {'password'}
end
