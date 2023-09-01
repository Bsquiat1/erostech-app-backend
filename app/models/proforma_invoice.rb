class ProformaInvoice < ApplicationRecord
  belongs_to :customer

  validates :invoice_number, presence: true, uniqueness: true
  validates :date, presence: true
  # Add other attributes and validations as needed
end
