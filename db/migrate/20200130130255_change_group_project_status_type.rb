class ChangeGroupProjectStatusType < ActiveRecord::Migration[6.0]
  def change
    change_column :groups, :project_status, :string
  end
end
