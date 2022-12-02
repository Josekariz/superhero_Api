class PowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def index
    render json: Power.all
  end

  def show
    render json: find_power
  end

  def update 
    power=find_power
    power.update!(power_params)
    render json: power, status: :Accepted

  rescue ActiveRecord::RecordInvalid => e
    render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity

  end

  private 
  def find_power
    Power.find(params[:id])
  end
  def render_not_found
    render json: {error: "Power not found"}, status: :not_found
  end


  def power_params
    params.permit(:description)
  end
end
