class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :address
end
