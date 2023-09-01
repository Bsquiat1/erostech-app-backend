class CreatePaymentReceiveds < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_receiveds do |t|
      t.date :payment_date
      t.decimal :amount
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
