module Api::V1
  class DepartmentsController < ApiController

    def index

       # render json: DepartmentSerializer.new(@departments).serialized_json
    end   
  end
end
