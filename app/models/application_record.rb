class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :random_order, -> { order(Arel.sql('RANDOM()')) }
end
