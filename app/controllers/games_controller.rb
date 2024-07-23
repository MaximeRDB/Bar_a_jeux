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
    if game_params[:barcode].present?
     @game = Games::Creator.new(game_params[:barcode]).call
    else
      @game = Game.new(game_params.compact!)
    end

    if @game.save!
      redirect_to @game
    else
      render "new"
    end
  end

  def update
    respond_to do |format|
      if @game.update!(
        description: game_params[:description].presence,
        name: game_params[:name].presence,
        image_link: game_params[:image_link].presence)

          format.html { redirect_to(@game,
          :notice => "Game description was successfully updated.") }
      end
    rescue ActiveRecord::NotNullViolation
      format.html { redirect_to(@game,
          :alert => "Game name was not updated."
      )
    }
    end
  end

  def destroy
    @game.destroy
    redirect_to root_path, :notice => "Your game has been deleted 🎮"
  end

  private

  def game_params
    params.require(:game).permit(:name, :label, :description, :image_link, :barcode)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
