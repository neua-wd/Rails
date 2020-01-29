class CreateStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :citizen_id
      t.string :student_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
