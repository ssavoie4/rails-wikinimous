# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating articles...'
10.times do
  article = Article.new(
    title: Faker::Movie.quote,
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. At quos, nihil. Deleniti nesciunt laboriosam expedita aliquam molestiae placeat nemo vel quo delectus, asperiores voluptatibus eaque, unde error, ratione praesentium temporibus."
  )
  article.save!
end
puts 'Finished!'
