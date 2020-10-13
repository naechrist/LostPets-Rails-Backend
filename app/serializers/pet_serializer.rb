class PetSerializer < ActiveModel::Serializer
  attributes :id, :pet_type_id, :name, :description, :location, :contact_number
end

