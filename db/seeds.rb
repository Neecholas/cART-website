# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Request.destroy_all
Commission.destroy_all
Art.destroy_all
User.destroy_all
images = ["https://res.cloudinary.com/dghextejt/image/upload/v1535634399/hfmdz5h5ryrlaixtptxn.jpg", "https://res.cloudinary.com/dghextejt/image/upload/v1535450755/samples/sheep.jpg",
"http://res.cloudinary.com/dghextejt/image/upload/v1535450755/samples/people/smiling-man.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1535450758/samples/animals/three-dogs.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1535450751/samples/animals/cat.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1535450757/samples/bike.jpg"]

img_one = "https://res.cloudinary.com/dghextejt/image/upload/v1536140516/kbthwperzeczpfdtoh2d.jpg"

a = User.create(
    first_name: "Nick",
    last_name: "Johnson",
    username: "NJ the juiceman",
    email: "nick@bogdanoff.com",
    password: "123123"
    )

Art.create!(
  title: "Nick",
  photo: open(images.sample),
  user: a)

c = Commission.create!(
  title: "Nick's test commission",
  description: "Use this to test front end",
  amount: 1066,
  photo: open(images.sample),
  user: a)

b = User.create(
    first_name: "Christian",
    last_name: "Bell",
    username: "ChristianBell",
    email: "christianBell@bell.com",
    password: "123123"
    )

Art.create(
  title: "img1",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140516/kbthwperzeczpfdtoh2d.jpg",
  user: b
  )
Art.create(
  title: "img2",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140578/ojc0glalg88czrgcjjil.jpg",
  user: b
  )
Art.create(
  title: "img3",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140659/uermp4tbqyjqgbb4sjoh.jpg",
  user: b
  )
Art.create(
  title: "img4",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140770/kql6nar04tz0ykynbdwi.jpg",
  user: b
  )


Request.create!(
  description: "I will do this for you!",
  commission: c,
  user: b,
  price_cents: 15
)



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
    user: User.all.sample
    )
end

puts 'Creating 10 Commissions...'
10.times do
  Commission.create!(
    title: Faker::Book.title,
    description: Faker::BojackHorseman.quote,
    amount: rand(1..15) * 10,
    photo: open(images.sample),
    user: User.all.sample
  )
end

# puts "Creating 10 Requests..."
  # 10.times do
  #   Request.create!(
  #     description: "I will do this for you!",
  #     commission_id: Commission.all.sample.id,
  #     user: User.all.sample,

  #     price_cents: rand(10..50)
  #   )
  # end

puts 'Finished!'
