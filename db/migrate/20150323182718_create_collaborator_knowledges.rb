class CreateCollaboratorKnowledges < ActiveRecord::Migration
  def change
    create_table :collaborator_knowledges do |t|
      t.string :lenguajes
      t.string :technologies
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
