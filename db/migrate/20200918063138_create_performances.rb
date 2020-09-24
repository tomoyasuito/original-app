class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string  :content
      t.integer :vehicle_type_id
      t.integer :number_of_units_id
      t.integer :insurance_id
      t.integer :card_id
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
