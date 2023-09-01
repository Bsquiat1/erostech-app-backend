class Customer < ApplicationRecord
    has_many :invoices
    has_many :proforma_invoices
    has_many :order_confirmations
    has_many :payments_received
    has_many :load_authorities
    has_many :gate_passes
  
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    # Add other validations and attributes as needed (e.g., phone, address)
  end
  