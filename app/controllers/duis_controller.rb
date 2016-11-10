class DuisController < ApplicationController
  before_action :set_dui, only: [:show, :edit, :update]

  def show
    set_meta_tags title: "Fort Collins DUI Lawyer | #{@dui.title}",
                  author: "Eric A. Sunness"
  end

  def new
    @dui = Dui.new
  end

  def create
    @dui = Dui.create(dui_params)
    if @dui.save
      redirect_to @dui
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private

  def set_dui
    @dui = Dui.friendly.find(params[:id])
  end

  def dui_params
    params.require(:dui).permit(:title, :content, :description, :tags)
  end

end
