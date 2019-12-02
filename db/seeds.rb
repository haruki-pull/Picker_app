# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

20.times do 
      name = Faker::Name.name
      email = Faker::Internet.email

User.create!(name: name,
             email:email,
             password_digest:"foobar")
end

users = User.order(:id).take(6)
20.times do 
      name = Faker::Name.name
      spot = Faker::Nation.capital_city
      price = Faker::Number.within(range: 1000..3000)
      genre = Faker::Job.field
      comment = Faker::Quote.robin 
users.each { |user| user.souvenirs.create!(name: name,
                                           spot: spot,
                                           price: price,
                                           genre: genre,
                                           comment: comment) }
end