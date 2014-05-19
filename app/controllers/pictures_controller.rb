class PicturesController < ApplicationController
  def show
    @picture = Picture.find_by({ :id => params[:id] })
  end

  def index
    @allpic = Picture.all
  end

  def new

  end

  def create

  end
end
