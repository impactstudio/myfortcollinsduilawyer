class DuisController < ApplicationController
  def show
    @dui = Dui.friendly.find(params[:id])
    set_meta_tags title: "Fort Collins DUI Lawyer | #{@dui.title}",
                  author: "Eric A. Sunness"
  end
end
