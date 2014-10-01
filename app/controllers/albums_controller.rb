class AlbumsController < ApiController
  def index
    respond_with artist.albums
  end

  def show
    respond_with album
  end

  def create
    render json: artist.albums.create(album_params)
  end

  def destroy
    Album.destroy params[:id]
    head :no_content
  end

  private
  def artist
    Artist.find_by!(id: params[:artist_id])
  end

  def album
    Album.find_by!(id: params[:id])
  end

  def album_params
    params.require(:album).permit(:title)
  end
end
