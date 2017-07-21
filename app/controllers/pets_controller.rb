class PetsController < ApplicationController

  def index
    @pets = Pet.all
    json_response(@pets)
  end

  def show
    @pet = Pet.find(params[:id])
    json_response(@pet)
  end

  def create
    @pet = Pet.create!(pet_params)
    json_response(@pet, 201)
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update!(pet_params)
      render status: :accepted, json: {
       message: "Pet info has been updated"
      }
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    if @pet.destroy
      render status: 200, json: {
       message: "Pet has been deleted."
      }
    end
  end

  def random
    @pet = Pet.random
    json_response(@pet)
  end

private

  def pet_params
    params.permit(:name,:species,:breed,:age)
  end
end
