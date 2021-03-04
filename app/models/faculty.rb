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
  validates_presence_of :first_name, :last_name

  # rank must be either `Assistant Professor`, `Associate Professor`, or `Professor`
  validates_inclusion_of :rank, in: ["Assistant Professor", "Associate Professor", "Professor"]


end
