# frozen_string_literal: true

class SongsController < ApplicationController
  before_action :set_song, only: %i[:show, :update, :destroy]

  # GET /songs
  def index
    @songs = Song.all

    render json: @songs
  end

  # GET /songs/1
  def show
    render json: Song.find(params[:id])
  end

  # POST /songs
  def create
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
