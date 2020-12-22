class User < ApplicationRecord

  #TODO I was thinking of removing the feature of a user being able to add a movie
  #TODO and just have a rotten tomatos api prepopulate the database with movies.

  has_many :movies
  has_many :reviews, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, length: { maximum: 50 }
end
