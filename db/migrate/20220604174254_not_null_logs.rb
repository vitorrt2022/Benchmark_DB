class NotNullLogs < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:logs_mercs, :created_at, true)
    change_column_null(:logs_mercs, :updated_at, true)
  end
end
