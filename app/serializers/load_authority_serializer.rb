class LoadAuthoritySerializer < ActiveModel::Serializer
  attributes :authority_number, :date

  belongs_to :customer
  belongs_to :loading_depot
end