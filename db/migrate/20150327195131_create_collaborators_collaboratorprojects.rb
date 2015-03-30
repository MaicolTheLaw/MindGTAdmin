class CreateCollaboratorsCollaboratorprojects < ActiveRecord::Migration
  def change
    create_table :collaborators_collaborator_projects, id: false do |t|
    	t.integer :collaborator_id
    	t.integer :collaborator_project_id
    end
  end
end
