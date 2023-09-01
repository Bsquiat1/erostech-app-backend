class CreateOrderConfirmations < ActiveRecord::Migration[7.0]
  def change
    create_table :order_confirmations do |t|
      t.string :order_number
      t.date :date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
