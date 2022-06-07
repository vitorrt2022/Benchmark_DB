class NotNullAllow < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:merchants, :created_at, true)
    change_column_null(:merchants, :updated_at, true)


    change_column_null(:terrorists, :created_at, true)
    change_column_null(:terrorists, :updated_at, true)
  end
end
