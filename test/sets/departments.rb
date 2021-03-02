module Contexts
  module Departments

    def create_departments
      @is       = FactoryBot.create(:department)
      @cs       = FactoryBot.create(:department, name: "Computer Science", unit_prefix: "15")
      @business = FactoryBot.create(:department, name: "Business", unit_prefix: "70")
      @english  = FactoryBot.create(:department, name: "English", unit_prefix: "76")
      @soc      = FactoryBot.create(:department, name: "Sociology", unit_prefix: "03", active: false)
    end
    
    def destroy_departments
      @is.destroy
      @business.destroy
      @english.destroy
      @soc.destroy
    end

  end
end