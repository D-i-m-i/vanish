class ProfilesController < ApplicationController
  def dashboard
    @pending_trips = current_user.bookings.where("start_date > ?", Date.today).where(status: "pending")
    @upcoming_trips = current_user.bookings.where("start_date > ?", Date.today).where(status: "accepted")
    @past_trips = current_user.bookings.where("end_date < ?", Date.today)
    @pending_bookings = current_user.your_bookings.where(status: "pending")
    @past_bookings = current_user.your_bookings.where("end_date < ?", Date.today)
  end
end
