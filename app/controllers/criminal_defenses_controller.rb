class CriminalDefensesController < ApplicationController
  before_action :set_criminal_defense, only: [:show, :edit, :update]

  def show
    set_meta_tags title: "Fort Collins Criminal Defense Lawyer | #{@criminal_defense.title}",
                  author: "Eric A. Sunness"
  end

  def new
    @criminal_defense = Dui.new
  end

  def create
    @dcd = Dui.create(dui_params)
    if @criminal_defense.save
      redirect_to @criminal_defense
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @criminal_defense.update(dui_params)
    @criminal_defense.save
    redirect_to @criminal_defense
  end

  private

  def set_criminal_defense
    @criminal_defense = CriminalDefense.friendly.find(params[:id])
  end

  def dui_params
    params.require(:criminal_defense).permit(:title, :content, :description, :tags)
  end

end
