class RemoveGroupIdFromInstructorProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :instructor_profiles, :group_id
  end
end
