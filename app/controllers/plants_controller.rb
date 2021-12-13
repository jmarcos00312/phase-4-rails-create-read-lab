class PlantsController < ApplicationController
  wrap_parameters format: []
  def index
    plants = Plant.all
    render json: plants, status: :ok
  end

  def show
    plants = Plant.find_by(id: params[:id])
    render json: plants, status: :ok
  end

  def create
    plants = Plant.create(create_plants)
    render json: plants, status: :created
  end

  private

  def create_plants
    params.permit(:name, :image, :price)
  end
end
