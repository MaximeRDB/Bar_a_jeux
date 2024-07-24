class BarGamesController < ApplicationController
  def index
    if params[:bar_id].present?
      @bargames = BarGame.where(bar_id: params[:bar_id])
    else
      @bargames = BarGame.all
    end
  end
end
