# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
User.create!(email: "fidan@movies.com", password: "12345678")
User.create!(email: "master.commander@movies.com", password: "12345678")
User.create!(email: "vojtech@movies.com", password: "12345678")

100.times do
  Movie.create!(
    name: FFaker::Movie.title,
    description: FFaker::Name.name,
    release_date: FFaker::Time.between(50.years.ago, Date.today)
  )
end

300.times do
  UserMovie.create!(
    user_id: User.all.random_order.first.id,
    movie_id: Movie.all.random_order.first.id
  )
end
