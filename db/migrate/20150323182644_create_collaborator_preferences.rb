class CreateCollaboratorPreferences < ActiveRecord::Migration
  def change
    create_table :collaborator_preferences do |t|
      t.string :likes
      t.string :dislikes
      t.string :shirt_size
      t.string :pants_size
      t.string :religion
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
