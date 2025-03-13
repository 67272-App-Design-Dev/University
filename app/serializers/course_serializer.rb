class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :course_number, :name, :units
end
