# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ListingType.create([
  { name: "Beauty & Spa" },
  { name: "Event" },
  { name: "Automotive" },
  { name: "Restaurant" },
  { name: "Health & Fitness" },
  { name: "Real Estate" },
  { name: "Hotels & Travels" }
])
AdminUser.create!(email: 'my@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
