class ChangeProjectStatusDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default(
      :groups,
      :project_status,
      "not assigned"
    )
  end
end
