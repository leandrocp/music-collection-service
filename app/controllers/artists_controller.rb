class ArtistsController < ApiController
  def index
    respond_with Artist.all
  end

  def show
    respond_with artist
  end

  def create
    respond_with Artist.create(artist_params)
  end

  def destroy
    Artist.destroy params[:id]
    head :no_content
  end

  private
  def artist_params
    params.require(:artist).permit(:name)
  end

  def artist
    Artist.find(params[:id])
  end
end
