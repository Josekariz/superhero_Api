class HeroPowersController < ApplicationController

def create

hero_powers= HeroPower.create!(hero_powers_params)
render json:hero_powers, status: :created


rescue ActiveRecord::RecordInvalid => e
  render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
end
private 
def hero_powers_params
  params.permit(:strength,:power_id,:heroe_id)
end
end
