class ChangeGroupDefaults < ActiveRecord::Migration[6.0]
  def change
    change_column_default(
     :groups,
     :name,
     "NOGROUP"
)
  end
end
