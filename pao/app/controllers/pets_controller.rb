class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update]
  def index
    @pets = Pet.all
  end
  def show
  end
  def new
    @pet = Pet.new
  end
  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pet_path(@pet)
  end
  def edit
  end
  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end
  def destroy
    Pet.find(params[:id]).destroy
    redirect_to pets_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species, :age, owner_ids:[])
  end
end
