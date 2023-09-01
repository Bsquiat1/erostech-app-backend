class GatePass < ApplicationRecord
  belongs_to :customer
  belongs_to :loading_depot

  validates :pass_number, presence: true, uniqueness: true
  validates :date, presence: true
  # Add other attributes and validations as needed
end
