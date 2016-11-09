class DuisController < ApplicationController
  def show
    @dui = Dui.friendly.find(params[:id])
  end
end
