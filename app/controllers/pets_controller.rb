class PetsController < ApplicationController

  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_create_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @pet.update(pet_update_params)
    redirect_to root_path
  end

  def destroy
    @pet.destroy
    redirect_to root_path
  end

  private
  def pet_create_params
    params.require(:pet).permit(:name, :category)
  end

  def pet_update_params
    params.require(:pet).permit(:found_at)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end




