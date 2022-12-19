User.create!(email: "fidan@movies.com", password: "12345678")
User.create!(email: "master.commander@movies.com", password: "12345678")
User.create!(email: "vojtech@movies.com", password: "12345678")

100.times do |index|
  MyMovie.create!(
    name: "#{FFaker::Movie.title} w/ seeded index #{index}",
    description: FFaker::Name.name,
    release_date: FFaker::Time.between(50.years.ago, Date.today)
  )
end

User.all.each_with_index do |user, i|
  MyMovie.all.each_with_index do |my_movie, j|
    UserMyMovie.create!(user: user, my_movie: my_movie) if (j + i) % 2 == 0
    p "Seeded user_my_movie for user #{user.email} and movie #{my_movie.name}" if (j + i) % 2 == 0
  end
end


