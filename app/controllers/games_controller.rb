class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :game_params, only: [:create]

def index
  @games = Game.all
end

  def show
  end

  def edit
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save!
      redirect_to @game
    else
      render "new"
    end
  end

  def update
    respond_to do |format|
      if @game.update!(description: game_params[:description])
              format.html { redirect_to(@game,
              :notice => "Game description was successfully updated.") }
      end
    end
  end

  def destroy
    p 'HERE ============='
    @game.destroy
    redirect_to root_path, :notice => "Your game has been deleted 🎮"
  end

  private

  def game_params
    params.require(:game).permit(:name, :label, :description)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
