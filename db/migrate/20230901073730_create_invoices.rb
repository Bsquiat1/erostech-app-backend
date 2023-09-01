class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.date :date
      t.decimal :subtotal
      t.decimal :discount
      t.decimal :tax
      t.decimal :total
      t.string :currency
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
