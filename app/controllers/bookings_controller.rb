class BookingsController < ApplicationController
  # create a booking when user clicks on "book" on show page
  # variables:
  # start_date
  # end_date
  # total_price
  # van_id
  # user_id
  def create
    @van = Van.find(params[:van_id])
    @user_id = current_user.id
    @booking = Booking.new(booking_params)
    @booking.van_id = @van.id
    @booking.user_id = @user_id
    @total_price = @van.price * (@booking.end_date.to_date - @booking.start_date.to_date).to_i
    @booking.total_price = @total_price
    if @booking.save
      redirect_to dashboard_path
    else
      render 'vans/show'
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    if @booking.save
      redirect_to dashboard_path
    else
      render 'profiles/dashboard'
    end
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    if @booking.save
      redirect_to dashboard_path
    else
      render 'profiles/dashboard'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
