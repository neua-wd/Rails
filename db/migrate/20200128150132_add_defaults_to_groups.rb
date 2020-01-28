class AddDefaultsToGroups < ActiveRecord::Migration[6.0]
  def change
    change_column_default(
      :groups,
      :name,
      "Waiting to be named.."
    )

    change_column_default(
      :groups,
      :project_status,
      false
    )
  end
end
