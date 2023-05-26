require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all
puts 'Creating 100 fake movies...'

100.times do
  movie = Movie.new(
    title: Faker::Movie.unique.title,
    overview: Faker::Movie.quote,
    poster_url: "https://source.unsplash.com/random/1000%C3%97500/?movie",
    rating: rand(1.0..10.0).round(1)
  )
  puts movie.save
end
