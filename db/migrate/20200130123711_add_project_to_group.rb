class AddProjectToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :project_title, :string
    add_column :groups, :project_description, :string
  end
end
