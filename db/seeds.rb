# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

12.times do |n|
  title = Faker::Book.title
  description = Faker::Lorem.sentence(10)
  Movie.create(:title => title, :description => description)
end
