class CreateTerroristMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :terrorist_matches do |t|
      t.integer :user_id
      t.string :m_name
      t.string :match

      t.timestamps
    end
  end
end
