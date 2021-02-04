class SongsController < ApplicationController
    def index
        @songs = Song.all.sort_by(&:name)
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        if request.referer.include?("/songs")
            redirect_to song_path(@song)
        elsif request.referer.include?("/artists")
            redirect_to artist_path(@song.artist)
        elsif request.referer.include?("/genres")
            redirect_to genre_path(@song.genre)
        else
            redirect_to root_path
        end
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy
        redirect_to songs_path
    end

    private
    def song_params
        params.require(:song).permit(:name, :artist_name, :genre_name, :artist_id, :genre_id)
    end
end
