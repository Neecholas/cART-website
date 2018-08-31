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
Order.destroy_all

User.create(
    first_name: "Nick",
    last_name: "Johnson",
    username: "NJ the juiceman",
    email: "nick@bogdanoff.com",
    password: "123123"
    )

User.create(
    first_name: "Christian",
    last_name: "Bell",
    username: "ChristianBell",
    email: "christianBell@bell.com",
    password: "123123"
    )


images = ["https://res.cloudinary.com/dghextejt/image/upload/v1535634399/hfmdz5h5ryrlaixtptxn.jpg" ]

puts 'Creating 10 Users...'
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    bio: "I’ve spent the last 40 years of my photographic career investigating movement and its expressive potential. My inspiration has always been photography’s ability to stop time and reveal what the naked eye cannot see. What intrigues me is making images that confound and confuse the viewer, but that the viewer knows, or suspects, really happened.",
    password: "123123"
  )
end

puts 'Creating 10 Arts...'
10.times do
  Art.create!(
    title: Faker::BojackHorseman.character,
    photo: open(images.sample),
    user_id: User.all.sample.id
    )
end

puts 'Creating 10 Commissions...'
10.times do
  Commission.create!(
    title: Faker::Book.title,
    description: Faker::BojackHorseman.quote,
    amount: rand(1..15) * 10,
    photo: open(images.sample),
    user_id: User.all.sample.id
  )
end

puts "Creating 10 Requests..."
  10.times do
    Request.create!(
      description: "I will do this for you!",
      commission_id: Commission.all.sample.id,
      user_id: User.all.sample.id,

      price_cents: rand(10..50)
    )
  end

puts 'Finished!'
