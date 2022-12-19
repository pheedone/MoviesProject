class MyMovie < ApplicationRecord
  has_many :user_my_movies, dependent: :destroy
  has_many :users, through: :user_my_movies
  end
