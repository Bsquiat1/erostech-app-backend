class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :invoice_items
  has_many :payments_received

  validates :invoice_number, presence: true, uniqueness: true
  validates :date, presence: true
  # Add other attributes and validations as needed (e.g., subtotal, discount, tax, total, currency)
end

