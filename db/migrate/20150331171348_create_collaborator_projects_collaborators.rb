class CreateCollaboratorProjectsCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborator_projects_collaborators, id: false do |t|
    	t.integer :collaborator_id
    	t.integer :collaborator_project_id
    end
  end
end
