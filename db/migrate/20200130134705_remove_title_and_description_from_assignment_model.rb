class RemoveTitleAndDescriptionFromAssignmentModel < ActiveRecord::Migration[6.0]
  def change
    remove_column :assignments, :title
    remove_column :assignments, :description
  end
end
