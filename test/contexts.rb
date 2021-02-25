# require needed files (generic term 'objects' used as placeholder)
# require './test/sets/objects'
require './test/sets/departments'


module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Deparments

  
  def create_all
    puts "Building context..."
    create_departments
    puts "Built departments"


  end
  
end