FactoryBot.define do
  factory :movie do
    association :user, factory: :user
    association :genre, factory: :genre
    title { "MyString" }
    description { "MyText" }
  end
end
