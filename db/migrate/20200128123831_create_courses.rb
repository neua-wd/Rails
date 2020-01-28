class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
