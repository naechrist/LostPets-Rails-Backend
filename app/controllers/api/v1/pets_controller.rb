class Api::V1::PetsController < ApplicationController
    # before_action :set_pet_type

    # /api/v1/pet_types/1/pets

    def index 
        @pets = Pet.all
        render json: @pets 
    end 

    def show 
        @pet = Pet.find(params[:id])
        render json: @pet 
    end 

    def create 
        @pet = @pet_type.pets.new(pet_params)
        if @pet.save
            render json: @pet_type
        else 
            render json: {error: 'Error creating pet'}
        end
    end 

    def update 
        binding.pry
    end 

    def destroy
        @pet = Pet.find(params[:id])
        @pet_type = PetType.find(@pet.pet_type_id)
        @pet.destroy 
        render json: @pet_type
    end 

    private

    def set_pet_type
        @pet_type = PetType.find(params[:pet_type_id])
    end

    def pet_params 
        params.require(:pet).permit(:pet_type_id, :name, :description, :location, :contact_number)
    end

end
