class RentalsController < ApplicationController
  def create
    @rental = Rental.new(rental_params)

    @car = Car.find(params[:car_id])
    @rental.car = @car
    @rental.user = current_user
    @days = (@rental.end_date.to_date - @rental.start_date.to_date).to_i + 1
    @total_price = (@car.price_per_day * @days)
    @rental.total_price = @total_price
    if @rental.save
      redirect_to car_path(@car)
    else
      render "cars/show"
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:car_id, :start_date, :end_date)
  end
end
