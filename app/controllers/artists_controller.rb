class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    get_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params)

    redirect_to @artist
  end

  def edit
    get_artist
  end

  def update
    get_artist
    @artist.update(artist_params)

    redirect_to @artist
  end

  def destroy
    get_artist.destroy
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def get_artist
    @artist = Artist.find(params[:id])
  end


end