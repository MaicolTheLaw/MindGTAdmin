class CreateCollaboratorBenefits < ActiveRecord::Migration
  def change
    create_table :collaborator_benefits do |t|
      t.boolean :gym
      t.string :gym_name
      t.string :company_saving
      t.integer :company_saving_amount
      t.string :welfare
      t.string :rent_deposit
      t.integer :rent_deposit_amount
      t.string :rent_deposit_per_month
      t.string :gasoline_help
      t.string :carwash_service
      t.string :housemoving_service
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
