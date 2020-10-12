class Api::V1::PetTypesController < ApplicationController

    def index 
        @pet_types = PetType.all
        render json: @pet_types #send to front end 
    end 

    def create
        @pet_type = PetType.new(pet_type_params)
        if @pet_type.save
            render json: @pet_type
        else 
            render json: {error: 'Error creating pet type'}
        end 
    end 

    def show 
        @pet_type = PetType.find(params[:id])
        render json: @pet_type
    end 

    def destroy
        @pet_type = PetType.find(params[:id])
        @pet_type.destroy 
    end 

    private

    def pet_type_params 
        params.require(:pet_type).permit(:name)
    end 
end
