class ProfilesController < ApplicationController
  def dashboard
    @your_trips = current_user.bookings.where("start_date > ?", Date.today)
    @past_trips = current_user.bookings.where("end_date < ?", Date.today)
    @pending_bookings = current_user.your_bookings
    @past_bookings = current_user.your_bookings.where("end_date < ?", Date.today)
  end
end
