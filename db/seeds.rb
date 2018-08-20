# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sex_array = ['male', 'female', 'other']

20.times do
  Actor.create(name: Faker::Name.name, age: rand(18..99), sex: sex_array.sample(1).first)
end

20.times do
  ProductionCompany.create(name: Faker::Company.name)
end

50.times do
  Booking.create!(salary: rand(100..5000), duration_days: rand(1..365), show_name: Faker::Book.title, role_name: Faker::Name.first_name, available?: [true, false].sample, actor_id: rand(1..20), production_company_id: rand(1..20))
end
