class InvoiceItem < ApplicationRecord
  belongs_to :invoice

  validates :name, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  # Add other attributes and validations as needed
end
