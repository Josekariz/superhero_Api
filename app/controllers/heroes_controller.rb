class HeroesController < ApplicationController
  def index
   render json: Heroe.all, status: :ok
  end

  def show
    render json: find_hero, status: :ok
  end
  private 
  def find_hero
    Heroe.find(params[:id])
  end
end
