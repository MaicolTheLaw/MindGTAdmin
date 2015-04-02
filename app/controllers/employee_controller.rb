class EmployeeController < ApplicationController
def employee
	@employeeName= Collaborator.find('1') 
    @employeeNew = Collaborator.new
    @search = Collaborator.find_by_names(params[:search])  	
  	@employeePreferences= CollaboratorPreference.find('1')
	@employeeEmergencies= CollaboratorEmergency.find('1')
	@employeeProjects= CollaboratorProject.find('3')
  end
end
