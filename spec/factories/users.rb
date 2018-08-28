FactoryBot.define do
  factory :user do
    password "password"
    password_confirmation "password"

    sequence(:email) { |n| "foo#{n}@bar.com" }
    sequence(:username) { |n| "foo#{n}bar" }
  end
end
