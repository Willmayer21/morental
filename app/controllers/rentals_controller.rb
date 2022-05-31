class RentalsController < ApplicationController
  def create
    @rental = Rental.new(rental_params)

    @car = Car.find(params[:car_id])
    @rental.car = @car
    @rental.user = current user
    if @rental.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:user_id, :car_id)
  end
end
