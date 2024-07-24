class BarsController < ApplicationController

    before_action :set_bar, only: [:show]

  def show

  end

  def index
    @bars = Bar.all
  end




  private

  def set_bar
    @bar = Bar.find(params[:id])
  end

end
