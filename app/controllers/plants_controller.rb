class PlantsController < ApplicationController

    params = {
        name: '',
        image: '',
        price: nil
    }

def index
    render json: Plant.all, except: [:created_at, :updated_at], status: :ok
end

def show
    render json: Plant.find_by(params[:id]), except: [:created_at, :updated_at], status: :ok
end

def create
    plant = Plant.create(params.permit(:name, :image, :price))
    render json: plant, status: :created
end

end