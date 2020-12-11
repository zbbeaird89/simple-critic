class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :reviews, dependent: :destroy
end
