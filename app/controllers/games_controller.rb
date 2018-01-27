class GamesController < ApplicationController
  # GET /game/:id
  def show
    @game = Game.where(id: params[:id])
  end

  # POST /game/:id
  def submit
    @game = Game.where(id: params[:id])
  end
end
