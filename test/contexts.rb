# require needed files that have the modules
require './test/sets/departments'
require './test/sets/faculties'


module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Departments
  include Contexts::Faculties

  
  def create_all
    puts "Building context..."
    create_departments
    puts "Built departments"
    create_faculties
    puts "Built faculties"

  end
  
end