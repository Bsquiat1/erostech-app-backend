class OrderConfirmationSerializer < ActiveModel::Serializer
  attributes :order_number, :date

  belongs_to :customer
end