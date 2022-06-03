class BookingsController < ApplicationController
  # create a booking when user clicks on "book" on show page
  # variables:
  # start_date
  # end_date
  # total_price
  # van_id
  # user_id
  def create
    @van_id = Van.find(params[:van_id])
    @user_id = current_user
    @total_price = van.price * 4
    @booking = Booking.new(van_id: @van_id, user_id: @user_id, total_price: @total_price)
    if @booking.save
      redirect_to dashboard_path
    else
      render 'vans/show'
    end
  end
end
