class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
		@vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    if @van.save
         # Will raise ActiveModel::ForbiddenAttributesError
    flash[:alert] = "Van created successfully"
    redirect_to van_path(@van)
    else
      flash[:alert] = "Error #{ @van.errors.objects.first.full_message}"
      render :new
    end
  end

  private

  def van_params
    params.require(:van).permit(:user_id, :name, :overview, :make_model_year, :kitchenette, :toilet, :solar_power, :price)
  end
end
