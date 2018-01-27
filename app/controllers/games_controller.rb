class GamesController < ApplicationController
  # GET /game/:id
  def show
    @game = Game.find(params[:id])
  end

  # POST /game/:id
  def submit
    @game = Game.find(params[:id])
    @current_round = Round.find(@game.current_round)

    # Send Azure API, update scores

    @current_round.semaphore -= 1
    max_score = @game.session.players.length
    if @current_round.semaphore == 0
      @current_round.scores.sort_by{&:last}
      @current_round.each do |player, score|
        score = max_score
        max_score -= 1
      end
    end
    @current_round.save
  end
end
