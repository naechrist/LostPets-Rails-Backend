class PetTypeSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :pets 
end

#serializers check the data we want to send to the front end like our model relationships 