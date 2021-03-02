class Faculty < ApplicationRecord
  # Relationships
  belongs_to :department
  has_many :assignments
  has_many :courses, through: :assignments

  # Scopes
  # 1. `alphabetical` [order]
  # 2. `active`       [where]

  # Validations
  # 1. must have first, last names
  # 2. rank must be either `Assistant Professor`, `Associate Professor`, or `Professor`


end
