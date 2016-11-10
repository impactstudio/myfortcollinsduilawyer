class CriminalDefensesController < ApplicationController
  def show
    @criminal_defense = CriminalDefense.friendly.find(params[:id])
  end
end
