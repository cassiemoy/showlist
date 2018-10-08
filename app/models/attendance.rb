class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :production

  accepts_nested_attributes_for :production
end
