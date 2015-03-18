class EmployeeController < ApplicationController
def employee
	@employeeName= Collaborator.find('2') 
    @employeeNew = Collaborator.new
    @search = Collaborator.find_by_names(params[:search]) 
  end
end
