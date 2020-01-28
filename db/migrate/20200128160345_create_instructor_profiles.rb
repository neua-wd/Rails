class CreateInstructorProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :instructor_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :citizen_id
      t.string :instructor_id
      t.string :department_name
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
