class GatePassSerializer < ActiveModel::Serializer
  attributes :pass_number, :date

  belongs_to :customer
  belongs_to :loading_depot
end