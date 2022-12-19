class UserMyMovie < ApplicationRecord
  belongs_to :user
  belongs_to :my_movie
end
