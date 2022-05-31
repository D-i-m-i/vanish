class VansController < ApplicationController
  def index
		@vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  private

  def van_params
    params.require(:van).permit(:name, :overview, :make_model_year, :kitchenette, :toilet, :solar_power, :price)
  end
end
