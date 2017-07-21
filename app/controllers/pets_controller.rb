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
    @pet = Pet.create(quote_params)
    json_response(@pet)
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(quote_params)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
  end

private

  def pet_params
    params.permit(:name,:species,:breed,:age)
  end
end
