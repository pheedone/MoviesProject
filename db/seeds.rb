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

User.all.each do |user|
  300.times do |index|
    UserMovie.create!(user_id: user.id, movie_id: Movie.all.random_order.first.id) if index % 2 == 0
  end
end


