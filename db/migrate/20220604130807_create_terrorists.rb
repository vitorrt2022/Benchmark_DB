class CreateTerrorists < ActiveRecord::Migration[7.0]
  def change
    create_table :terrorists, id: false do |t|
      t.string :name
      t.integer :id

      t.timestamps
    end
  end
end
