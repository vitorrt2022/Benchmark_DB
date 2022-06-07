class CreateLogsMercs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs_mercs do |t|
      t.integer :user_id
      t.string :m_name
      t.string :t_name

      t.timestamps
    end
  end
end
