class CreateMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :merchants do |t|
      t.string :legal_representative_name
      t.integer :user_id

      t.timestamps
    end
  end
end
