# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(email: "test@test.com", password: "123123")
User.create!(email: "test2@test.com", password: "123123")



puts 'Creating 5 Commissions...'
5.times do |i|
  product = Commission.create!(
    title: Faker::Book.title,
    description: Faker::BojackHorseman.quote,
    amount: rand(1..15) * 10,
    user_id: User.first.id
  )
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
