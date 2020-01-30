class RemoveDefaultNamed < ActiveRecord::Migration[6.0]
  def change
    change_column_default :groups, :named, nil
  end
end
