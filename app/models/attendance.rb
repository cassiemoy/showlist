class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :production
  belongs_to :venue

  accepts_nested_attributes_for :production
end
