class PaymentReceived < ApplicationRecord
  belongs_to :invoice

  validates :payment_date, presence: true
  validates :amount, presence: true
  # Add other attributes and validations as needed
end
