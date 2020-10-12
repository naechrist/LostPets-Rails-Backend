class Pet < ApplicationRecord
    belongs_to :pet_type
    validates :description, :location, :contact_number, presence: true
end
