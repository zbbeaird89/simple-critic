FactoryBot.define do
  factory :review do
    association :user, factory: :user
    association :movie, factory: :movie
    opinion { Faker::Lorem.paragraph }
    plot_rating { (1..5).to_a.sample }
    acting_rating { (1..5).to_a.sample }
    screenplay_rating { (1..5).to_a.sample }
    cinematography_rating { (1..5).to_a.sample }
    musical_score_rating { (1..5).to_a.sample }
    editing_rating { (1..5).to_a.sample }
    directing_rating { (1..5).to_a.sample }
    average_rating { [plot_rating, acting_rating, screenplay_rating, cinematography_rating,
                      musical_score_rating, editing_rating, directing_rating].sum / 7  } # 7 is number of fields
  end
end
