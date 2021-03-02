# require needed files (generic term 'objects' used as placeholder)
# require './test/sets/objects'
require './test/sets/departments'



module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Departments

  
  def create_all
    puts "Building context..."
    create_departments
    puts "Built departments"
    # create_faculties
    # puts "Built faculties"

  end
  
end