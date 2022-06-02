class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @cars = Car.all
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url("car.png")
      }
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

  # to be able to cancel the booking
  # def destroy
  # end
end
