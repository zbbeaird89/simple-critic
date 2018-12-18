# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

12.times do |n|
  name = Faker::Name.first_name
  User.create(:username => name,
              :email => "#{name}@name.com",
              :password => "password",
              :password_confirmation => "password")
end

8.times do |n|
  Genre.create(:name => Faker::Book.genre)
end

12.times do |n|
  title = Faker::Book.title
  description = Faker::Lorem.sentence(10)
  Movie.create(:title => title,
               :description => description,
               :user_id => rand(1..12),
               :genre_id => rand(1..8))
end

30.times do |n|
  Review.create(:user_id => rand(1..12),
                :movie_id => rand(1..12),
                :plot_rating => rand(1..5),
                :acting_rating => rand(1..5),
                :screenplay_rating => rand(1..5),
                :cinematography_rating => rand(1..5),
                :musical_score_rating => rand(1..5),
                :editing_rating => rand(1..5),
                :directing_rating => rand(1..5),
                :average_rating => rand(1..5),
                :opinion => Faker::Hipster.paragraph)
end
