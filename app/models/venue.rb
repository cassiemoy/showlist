class Venue < ApplicationRecord
  has_and_belongs_to_many :productions
end
