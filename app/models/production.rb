class Production < ApplicationRecord
  belongs_to :show
  has_and_belongs_to_many :venues

  has_many :attendances
  has_many :users, through: :attendances
end
