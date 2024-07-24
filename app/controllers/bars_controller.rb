class BarsController < ApplicationController

    before_action :set_bar, only: [:show]

  def show

  end

  def index
    @bars = Bar.all

    @markers = @bars.geocoded.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        # info_window_html: render_to_string(partial: "shared/info_window", locals: {bar: bar})
      }
    end
  end

  private

  def set_bar
    @bar = Bar.find(params[:id])
  end

end
