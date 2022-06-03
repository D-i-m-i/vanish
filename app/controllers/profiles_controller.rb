class ProfilesController < ApplicationController
  def dashboard
    @your_trips = current_user.bookings
    # @pending_trips = current_user.bookings
  end
end
