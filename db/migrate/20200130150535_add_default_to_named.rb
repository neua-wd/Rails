class AddDefaultToNamed < ActiveRecord::Migration[6.0]
  def change
    change_column_default(
      :groups,
      :named,
      "not named"
    )
  end
end
