class SongsController < ApiController
  def index
    render json: album.songs
  end

  def create
    render json: album.songs.create(song_params)
  end

  private
  def album
    Album.find_by!(id: params[:album_id])
  end

  def song_params
    params.require(:song).permit(:title)
  end
end
