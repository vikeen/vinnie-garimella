class ArtworksController < ApplicationController
  def index
    if !params[:artwork_types_id].nil? && !params[:artwork_types_id].empty?
        @artworks = Artwork.where( artwork_types_id: params[:artwork_types_id] )
    else
        @artworks = Artwork.all
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    if current_user
      @artwork = Artwork.new
    else
      redirect_to artworks_url
    end
  end

  def edit
    if current_user
      @artwork = Artwork.find(params[:id])
    else
      redirect_to artworks_url
    end
  end

  def create
    if current_user
      @artwork = Artwork.new(params[:artwork])
        if @artwork.save
          flash[:success] = 'Artwork was successfully created.'
          redirect_to @artwork
        else
          flash[:error] = 'Failed to create Artwork.'
          render action: "new"
        end
    else
      redirect_to artworks_url
    end
  end

  def update
    if current_user
      @artwork = Artwork.find(params[:id])
      if @artwork.update_attributes(params[:artwork])
        redirect_to @artwork
        flash[:success] = 'Artwork was successfully updated.'
      else
        render action: "edit"
        flash[:error] = 'Failed to update Artwork.'
      end
    else
      redirect_to artworks_url
    end
  end

  def destroy
    if current_user
      @artwork = Artwork.find(params[:id])
      @artwork.destroy
    end

    redirect_to artworks_url
  end
end
