# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Commission.destroy_all
Request.destroy_all
Art.destroy_all

images = ["https://res.cloudinary.com/dghextejt/image/upload/v1535634399/hfmdz5h5ryrlaixtptxn.jpg" ]

puts 'Creating 5 Users...'
5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "123123"
  )
end

puts 'Creating 5 Arts...'
5.times do
  Art.create!(
    title: Faker::Book.title,
    photo: open(images.sample),
    user_id: User.all.sample.id
    )
end

puts 'Creating 5 Commissions...'
5.times do
  Commission.create!(
    title: Faker::Book.title,
    description: Faker::BojackHorseman.quote,
    amount: rand(1..15) * 10,
    user_id: User.first.id
  )
end

puts "Creating 5 Requests..."
  5.times do
    Request.create!(
      description: "I will do this for you!",
      commission_id: Commission.first.id,
      user_id: User.last.id,
      price_cents: rand(1..5) * 1000
    )
  end

puts 'Creating 5 Commissions...'
5.times do
  Commission.create!(
    title: Faker::Book.title,
    description: Faker::BojackHorseman.quote,
    amount: rand(1..15) * 10,
    user_id: User.last.id
  )
end
puts 'Finished!'
