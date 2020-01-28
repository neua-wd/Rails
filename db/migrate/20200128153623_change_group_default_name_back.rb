class ChangeGroupDefaultNameBack < ActiveRecord::Migration[6.0]
  def change
    change_column_default(
      :groups,
      :name,
      "Waiting to be named.."
    )
  end
end
