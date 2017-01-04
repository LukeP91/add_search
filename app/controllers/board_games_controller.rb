class BoardGamesController < ApplicationController

  def index
    if params[:search]
      @board_games = BoardGame.search(params[:search])
    else
      @board_games = BoardGame.all
    end
  end

  def show
    @board_game = BoardGame.find(params[:id])
  end
end
