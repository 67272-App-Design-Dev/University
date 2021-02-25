class Faculty < ApplicationRecord
  belongs_to :department
  has_many :assignments
  has_many :courses, through: :assignments
end
