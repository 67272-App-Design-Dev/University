class Course < ApplicationRecord
  has_many :assignments
  has_many :faculties, through: :assignments
end
