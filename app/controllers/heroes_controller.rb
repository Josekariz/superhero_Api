class HeroesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  def index
   render json: Heroe.all,  include: ['']
  end

  def show
    render json: find_hero
  end
  private 
  def find_hero
    Heroe.find(params[:id])
  end
  def render_not_found
    render json: {error: "Hero not found"}, status: :not_found
  end
end
