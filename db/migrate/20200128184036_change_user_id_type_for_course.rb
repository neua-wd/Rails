class ChangeUserIdTypeForCourse < ActiveRecord::Migration[6.0]
  def change
    change_column :courses, :user_id, :integer
  end
end
