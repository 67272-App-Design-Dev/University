class Department < ApplicationRecord
  has_many :faculties
  has_many :courses, through: :faculties

  validates_presence_of :name, :unit_prefix
  # validates_numericality_of :unit_prefix, integer_only: true, greater_than: 0, less_than: 100
  # validates_inclusion_of :unit_prefix, in: (1..99).to_a.map{|x| x.to_s}
  validates_format_of :unit_prefix, with: /\A\d{2}\z/, message: "should be two digits"
  validates_uniqueness_of :unit_prefix
  # validates :unit_prefix, presence: true, format: with: /\A\d{2}\z/, unqiueness: true

end

