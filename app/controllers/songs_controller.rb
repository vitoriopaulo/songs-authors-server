# frozen_string_literal: true

class SongsController < ProtectedController
  before_action :set_song, only: %i[show update destroy]

  # GET /songs
  def index
    @songs = current_user.songs

    render json: @songs
  end

  # GET /songs/1
  def show
    render json: current_user.songs.find(params[:id])
  end

  # POST /songs
  def create
  # binding.pry
    @song = current_user.songs.build(song_params)

    if @song.save
      render json: @song, status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    # binding.pry
    @song.destroy
    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
  def set_song
      @song = current_user.songs.find(params[:id])
  end

    # Only allow a trusted parameter "white list" through.
  def song_params
      params.require(:song).permit(:title, :year, :authors)
  end
    private :set_song, :song_params
end
