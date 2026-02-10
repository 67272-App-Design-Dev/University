class Department < ApplicationRecord
  has_many :faculties
  has_many :courses, through: :faculties

  # Scopes
  scope :alphabetical, -> { order('name') }
  scope :active, -> { where(active: true) }
  scope :inactive, -> { where.not(active: true) }

  # Validations
  validates_presence_of :name, :unit_prefix
  ### other options that work are...
  # validates_numericality_of :unit_prefix, integer_only: true, greater_than: 0, less_than: 100
  # validates_inclusion_of :unit_prefix, in: (1..99).to_a.map{|x| x.to_s}
  ### but given the possibility of leading zeros, best is...
  validates_format_of :unit_prefix, with: /\A\d{2}\z/, message: "should be two digits"

  # validates_uniqueness_of :unit_prefix
  ### we could also combine both validators as follows...
  # validates :unit_prefix, presence: true, format: with: /\A\d{2}\z/, unqiueness: true
end
