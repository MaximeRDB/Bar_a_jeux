class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]
  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @game.update!(description: game_params[:description])
              format.html { redirect_to(@game,
              :notice => "Game description was successfully updated.") }
      end
    end
  end

  private

  def game_params
    params[:game]
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
