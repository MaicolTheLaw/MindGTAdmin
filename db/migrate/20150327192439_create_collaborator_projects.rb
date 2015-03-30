class CreateCollaboratorProjects < ActiveRecord::Migration
  def change
    create_table :collaborator_projects do |t|
      t.string :project_name
      t.string :technologies
      t.string :id_responsible
      t.date :start_date
      t.date :finish_date
      t.string :position

      t.timestamps null: false
    end
  end
end
