class Department < ApplicationRecord
  has_many :faculties
  has_many :courses, through: :faculties

  validates_presence_of :name, :unit_prefix
  validates_format_of :unit_prefix, with: /\A\d{2}\z/, message: "should be two digits"
end
