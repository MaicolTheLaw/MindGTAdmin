class CreateCollaboratorSchoolinfos < ActiveRecord::Migration
  def change
    create_table :collaborator_schoolinfos do |t|
      t.string :education_level
      t.string :career
      t.string :technologies
      t.string :languages
      t.string :school_origin
      t.string :school_schedule
      t.string :semester
      t.integer :collaborator_id

      t.timestamps null: false
    end
  end
end
