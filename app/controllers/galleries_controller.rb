class GalleriesController < ApplicationController

  #created by tapan
  #created_on:07/05/2012
  #purpose: new gallry form

  def new
    @gallery = Gallery.new
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: show a gallery

  def show
    @gallery = Gallery.find(params[:id])
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: show list of galleries

  def index
    @galleries = Gallery.all
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: edit a gallery

  def edit
    @gallery = Gallery.find(params[:id])
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: create a new gallery

  def create
     @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      redirect_to @gallery
      return
    else
       redirect_to root_path
    end
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: update a gallery

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update_attributes(params[:gallery])
      redirect_to @gallery
      return
    else
      redirect_to request.referer
    end
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: delete a gallery

  def delete
    
  end
end
