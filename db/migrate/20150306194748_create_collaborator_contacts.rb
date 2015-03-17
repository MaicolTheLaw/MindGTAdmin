class CreateCollaboratorContacts < ActiveRecord::Migration
  def change
    create_table :collaborator_contacts do |t|
      t.string :street
      t.integer :street_number
      t.string :colony
      t.string :city
      t.integer :zip_code
      t.integer :phone_home
      t.integer :phone_mobile
      t.string :email
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
