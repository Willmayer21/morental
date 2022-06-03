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
    @car = [Car.find(params[:id])]
    @rental = Rental.new
    @user_rentals = Rental.where(car_id: params[:id], user_id: current_user.id)

    @markers = @car.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url("car.png")
      }
    end
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
