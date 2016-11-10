class CriminalDefensesController < ApplicationController
  def show
    @criminal_defense = CriminalDefense.friendly.find(params[:id])
    set_meta_tags title: @criminal_defense.title
  end
end
