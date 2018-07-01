# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..20).each do |i|


  user = User.find_or_create_by(first_name: Faker::Name.name, last_name: "XXXX",
                                street: Faker::Address.street_name, number: Faker::Address.building_number,
                                postcode: Faker::Address.postcode, city: Faker::Address.city,
                                country: Faker::Address.country)

  puts "user  #{user.id}"
  p1 = Post.find_or_create_by(body:Faker::Lorem.paragraph, user: user)
  Post.find_or_create_by(body: Faker::Lorem.paragraph, user: user)
  Comment.find_or_create_by(body: Faker::Lorem.paragraph, post: p1)
  Comment.find_or_create_by(body: Faker::Lorem.paragraph, post: p1)
end

