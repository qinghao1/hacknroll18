class GamesController < ApplicationController
  # GET /game/:id
  def show
    @game = Game.find(params[:id])
  end

  # POST /game/:id
  def submit
    @game = Game.find(params[:id])
    @current_round = Round.find(@game.current_round)
  end
end
