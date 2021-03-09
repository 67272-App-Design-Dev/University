class Course < ApplicationRecord
  has_many :assignments
  has_many :faculties, through: :assignments

  # Scopes
  scope :alphabetical, -> { order('name') }
  scope :by_number, -> { order(:unit_prefix).order(:number) }
  scope :active, -> { where(active: true) }
  scope :inactive, -> { where.not(active: true) }
  scope :minis,  -> { where('units <= ?', 6) }

end
