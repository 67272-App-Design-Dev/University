module Contexts
  module Courses

    def create_courses
      @is250 = FactoryBot.create(:course)
      @is272 = FactoryBot.create(:course, name: "App Design & Dev", number: 272, units: 12)
      @cs112 = FactoryBot.create(:course, name: "Intro to Python", unit_prefix: 15, number: 112, units: 10)
      @is373 = FactoryBot.create(:course, name: "IS Consulting", number: 373, units: 12)
      @is240 = FactoryBot.create(:course, name: "Mobile Web Dev", number: 240, units: 9)
    end

  end
end