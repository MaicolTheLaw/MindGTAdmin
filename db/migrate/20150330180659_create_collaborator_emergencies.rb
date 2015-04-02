class CreateCollaboratorEmergencies < ActiveRecord::Migration
  def change
    create_table :collaborator_emergencies do |t|
      t.string :names
      t.string :last_names
      t.integer :phone_home
      t.integer :phone_mobile
      t.string :relationship
      t.string :address
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
