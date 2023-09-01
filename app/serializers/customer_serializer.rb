class CustomerSerializer < ActiveModel::Serializer
  attributes :name, :email, :phone, :address
end
