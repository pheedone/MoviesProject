User.create!(email: "fidan@movies.com", password: "12345678")
User.create!(email: "master.commander@movies.com", password: "12345678")
User.create!(email: "vojtech@movies.com", password: "12345678")

100.times do |index|
  Movie.create!(
    name: "#{FFaker::Movie.title} w/ seeded index #{index}",
    description: FFaker::Name.name,
    release_date: FFaker::Time.between(50.years.ago, Date.today)
  )
end

User.all.each_with_index do |user, i|
  Movie.all.each_with_index do |movie, j|
    UserMovie.create!(user: user, movie: movie) if (j + i) % 2 == 0
    p "Seeded usermovie for user #{user.email} and movie #{movie.name}" if (j + i) % 2 == 0
  end
end


