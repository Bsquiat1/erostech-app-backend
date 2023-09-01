class ProformaInvoiceSerializer < ActiveModel::Serializer
  attributes :invoice_number, :date, :subtotal, :discount, :tax, :total, :currency

  belongs_to :customer
end
