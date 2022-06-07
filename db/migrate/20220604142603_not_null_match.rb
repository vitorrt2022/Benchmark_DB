class NotNullMatch < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:terrorist_matches, :created_at, true)
    change_column_null(:terrorist_matches, :updated_at, true)
  end
end
