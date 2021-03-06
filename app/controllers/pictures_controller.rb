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
    newpic = Picture.new
    newpic.caption = params[:caption]
    newpic.source = params[:source]
    newpic.save
    redirect_to("http://localhost:3000/all_pictures")
  end

  def destroy
    Picture.destroy(params[:id])
    redirect_to("http://localhost:3000/all_pictures")
  end

  def edit
  end

  def update
    editpic = Picture.find_by({ :id => params[:id] })
    editpic.caption = params[:caption]
    editpic.source = params[:source]
    editpic.save
    redirect_to("http://localhost:3000/picture_details/#{editpic.id }")
  end
end

