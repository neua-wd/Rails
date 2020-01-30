class AddNamedColumnToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :named, :string
  end
end
