class Collaborator < ActiveRecord::Base 
	has_and_belongs_to_many :collaborator_projects
end
