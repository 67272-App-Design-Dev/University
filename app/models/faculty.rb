class Faculty < ApplicationRecord
  # Relationships
  belongs_to :department
  has_many :assignments
  has_many :courses, through: :assignments

  # Scopes
  # `alphabetical`
  # `active`

  # Validations
  # must have first, last names
  # rank must be either `Assistant Professor`, `Associate Professor`, or `Professor`


end
