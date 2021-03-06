class Production < ApplicationRecord
  belongs_to :show

  has_many :attendances
  has_many :users, through: :attendances

  accepts_nested_attributes_for :show
end
