class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = " \
      model ILIKE :query \
      OR description ILIKE :query \
      OR price_per_day::text ILIKE :query \
      OR year::text ILIKE :query \
      "
      @cars = Car.where(sql_query, query: "%#{params[:query]}%")
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
    @rental = Rental.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
  end

  def destroy
  end
end
