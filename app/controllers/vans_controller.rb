class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @index_photos = ["https://images.unsplash.com/photo-1571421952328-96c209ad3c26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dmFuYWdvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1576882981805-0629e8d5061f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3ByaW50ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1576793048000-494aaa93d160?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1602721186896-1b21c7405c0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1549194898-60fd030ecc0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1583797227225-4233106c5a2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1597685204565-110abf469a1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHZhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1591706515036-cb0f48dc5e62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHZhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1619677394722-6397960e590b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHZhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1593914370442-49d414beca24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHZhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1561361513-2d000a50f0dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"]

    @params_query = params[:query] && params[:query][:location] ? params[:query][:location] : ""
    if params[:query].present? && params[:query][:location].present?
      @vans = Van.global_search(params[:query][:location])
    else
      @vans = Van.all
    end
  end

  def show
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    @van.user_id = current_user.id
    if @van.save
         # Will raise ActiveModel::ForbiddenAttributesError
    flash[:alert] = "Van created successfully"
    redirect_to van_path(@van)
    else
      flash[:alert] = "Error #{@van.errors.objects.first.full_message}"
      render :new
    end
  end

  private

  def van_params
    params.require(:van).permit(:name, :overview, :make_model_year, :kitchenette, :toilet, :solar_power, :price, :address, photos: [])
  end
end
