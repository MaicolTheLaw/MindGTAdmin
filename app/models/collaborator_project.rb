class CollaboratorProject < ActiveRecord::Base
	has_and_belongs_to_many :collaborators
end
