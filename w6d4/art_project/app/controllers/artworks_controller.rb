class ArtworksController < ApplicationController

    def index
        owned = Artwork.where(artist_id: params[:user_id]) #id: 19 from a User.id 
        shared = Artwork.joins(:shared_users).where(artwork_shares: {viewer_id: params[:user_id]})
        render json: owned + shared

        ##{"artwork_share"=>{"artwork_id"=>"3", "viewer_id"=>"2"}, "controller"=>"artworks", "action"=>"index", "user_id"=>"18"}
    end

    def show
        a = Artwork.find_by(id: params[:id])
        render json: a    ###maybe no if/else? just render null?????????
    end

    def create
        a = Artwork.new(artwork_params)
        if a.save
            render json: a
        else
            render json: a.errors.full_messages, status: 422  #:unprocessable entity <- rails parses to status code 
        end
    end
    
    def update
        a = Artwork.find_by(id: params[:id])
        if a.update(artwork_params)
            render json: a
        else
            render json: a.errors.full_messages, status: 422
        end

    end

    def destroy
        a = Artwork.find_by(id: params[:id])
        n = a.title
        if a.destroy
            render json: n + ' deleted.'
        end
    end

    private

    def artwork_params
        params
            .require(:artwork)
            .permit(:title, :image_url, :artist_id) ###permitting foreign_keys / artist_id?
    end


end