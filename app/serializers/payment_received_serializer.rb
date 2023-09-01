class PaymentReceivedSerializer < ActiveModel::Serializer
  attributes :payment_date, :amount

  belongs_to :invoice
end