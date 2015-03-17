class CreateCollaboratorWorks < ActiveRecord::Migration
  def change
    create_table :collaborator_works do |t|
      t.string :position
      t.string :team
      t.decimal :salary
      t.string :account
      t.string :division
      t.string :department
      t.string :working_status
      t.boolean :status
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
