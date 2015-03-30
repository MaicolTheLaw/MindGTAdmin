class CreateCollaboratorBanks < ActiveRecord::Migration
  def change
    create_table :collaborator_banks do |t|
      t.string :beneficiary_name
      t.string :relationship
      t.string :rfc
      t.string :birthdate
      t.string :adress
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
