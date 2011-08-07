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
  physical_being_delivered { true }
  delivering_to { "Wellington" }
end
# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
