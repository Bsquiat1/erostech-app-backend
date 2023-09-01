class CreateGatePasses < ActiveRecord::Migration[7.0]
  def change
    create_table :gate_passes do |t|
      t.string :pass_number
      t.date :date
      t.references :customer, null: false, foreign_key: true
      t.references :loading_depot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
