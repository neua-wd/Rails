class CreateVisitorProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :visitor_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :citizen_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
