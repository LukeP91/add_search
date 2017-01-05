class BoardGamesController < ApplicationController

  def index
      @board_games = BoardGame.all
  end

  def show
    @board_game = BoardGame.find(params[:id])
  end

  def search
    @board_games = BoardGame.search(params[:search])
    render :index
  end
end
