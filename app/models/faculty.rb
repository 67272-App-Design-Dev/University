class Faculty < ApplicationRecord
  # Relationships
  belongs_to :department
  has_many :assignments
  has_many :courses, through: :assignments

  # Scopes
  scope :alphabetical, -> { order('last_name, first_name') }
  scope :active, -> { where(active: true) }
  scope :inactive, -> { where.not(active: true) }
  scope :for_department, ->(department_id) { where('department_id = ?', department_id) }

  # Validations
  # must have first, last names
  validates_presence_of :first_name, :last_name

  # rank must be either `Assistant Professor`, `Associate Professor`, or `Professor`
  validates_inclusion_of :rank, in: ["Assistant Professor", "Associate Professor", "Professor"]


end
