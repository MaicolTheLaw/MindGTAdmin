class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.string :names
      t.string :last_names
      t.string :gender
      t.date :birthdate
      t.string :curp
      t.string :rfc

      t.timestamps null: false
    end
  end
end
