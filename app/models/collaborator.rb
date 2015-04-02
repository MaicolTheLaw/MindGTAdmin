class Collaborator < ActiveRecord::Base 
  attr_accessible :names, 
                  :last_names, 
                  :gender,
                  :birthdate,
                  :curp,
                  :rfc,
                  :collaborator_projects_attributes


	has_and_belongs_to_many :collaborator_projects
	has_many :collaborator_emergencies #:dependent => :destroy

	accepts_nested_attributes_for :collaborator_projects,
				  :reject_if => :all_blank,
				  :allow_destroy => true

	accepts_nested_attributes_for :collaborator_emergencies
end
