class DuisController < ApplicationController
  before_action :set_dui, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :create, :update, :new]

  def index
    @duis = Dui.all
  end

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
    @dui.update(dui_params)
    @dui.save
    redirect_to @dui
  end

  def destroy
    @dui.destroy
    redirect_to duis_path
  end

  private

  def set_dui
    @dui = Dui.friendly.find(params[:id])
  end

  def dui_params
    params.require(:dui).permit(:title, :content, :description, :tags)
  end

end
