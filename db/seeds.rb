# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(first_name: "Christian", last_name: "Bell", username: "ctcbell1995", email: "test@test.com", password: "123123")
User.create!(first_name: "Arber", last_name: "Zyba", username: "Arber1", email: "test2@test.com", password: "123123")
User.create!(first_name: "Arber", last_name: "Zyba", username: "Arber", email: "test3@test.com", password: "123123")

puts 'Creating 5 Commissions...'
5.times do |i|
  product = Commission.create!(
    title: Faker::Book.title,
    description: Faker::BojackHorseman.quote,
    amount: rand(1..15) * 10,
    user_id: User.first.id
  )
  5.times do
    request = Request.create!(
      description: "I will do this for you!",
      amount: rand(1..15) * 10,
      commission_id: product.id,
      user_id: User.last.id,
      price_cents: rand(1..5) * 1000
    )
  end
end

puts 'Creating 5 Commissions...'
5.times do |i|
  product = Commission.create!(
    title: Faker::Book.title,
    description: Faker::BojackHorseman.quote,
    amount: rand(1..15) * 10,
    user_id: User.last.id
  )
end
puts 'Finished!'
