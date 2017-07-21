class PetsController < ApplicationController

  def index
    @pets = Pet.all
    if Pet.all.length===0
      render status: 404, json: {
       message: "There are no pets currently in this database."
      }
    else
      json_response(@pets)
    end
  end

  def show
    #exception message defined in application_controller
    @pet = Pet.find(params[:id])
    json_response(@pet)
  end

  def create
    #exception message defined in application_controller
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
    if Pet.all.length===0
      render status: 404, json: {
       message: "There are no pets currently in this database."
      }
    else
      json_response(@pet)
    end
  end

  def search
    @pets = Pet.search(params[:name])
    if !params[:name]
      render status: 404, json: {
       message: "Please enter a name as a parameter."
      }
    elsif @pets.length===0
      render status: 404, json: {
       message: "No pet was found with that name."
      }
    else
      json_response(@pets)
    end
  end

private

  def pet_params
    params.permit(:name,:species,:breed,:age)
  end
end
