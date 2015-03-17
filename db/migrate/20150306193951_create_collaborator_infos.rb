class CreateCollaboratorInfos < ActiveRecord::Migration
  def change
    create_table :collaborator_infos do |t|
      t.string :picture
      t.string :relationship_status
      t.decimal :height
      t.string :birthplace
      t.string :nationality
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
