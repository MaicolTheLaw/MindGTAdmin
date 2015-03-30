class CreateCollaboratorPastworks < ActiveRecord::Migration
  def change
    create_table :collaborator_pastworks do |t|
      t.string :company
      t.string :period
      t.string :position
      t.string :team
      t.integer :salary
      t.string :boss
      t.integer :phone
      t.string :reason_to_leave
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
