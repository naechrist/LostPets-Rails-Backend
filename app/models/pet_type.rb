class PetType < ApplicationRecord
    has_many :pets
    validates :name, uniqueness: true
end
