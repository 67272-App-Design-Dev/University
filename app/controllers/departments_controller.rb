class DepartmentsController < ApplicationController
  def index
    @active_departments = Department.active.alphabetical.to_a
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def edit
    @department = Department.find(params[:id])
  end
end
