class RemoveDefaultNameFromGroup < ActiveRecord::Migration[6.0]
  def change
    change_column_default :groups, :name, nil
  end
end
