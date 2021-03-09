class Assignment < ApplicationRecord
  belongs_to :course
  belongs_to :faculty

  # Scopes
  scope :alphabetical, -> { joins(:faculty).order('faculties.last_name, faculties.first_name') }

end
