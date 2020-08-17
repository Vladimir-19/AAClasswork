class ArtworkSharesController < ApplicationController

    def create
        s = ArtworkShare.new(artwork_share_params)
        if s.save  
            render plain: 'success!'
        else
            render plain: 'you fool!'
        end
    end

    def destroy
        s = ArtworkShare.find(params[:id])
        if s.delete
            render plain: 'delete success!'
        else
            render plain: 'you fool!!!'
        end
    end




    private
    def artwork_share_params
        params
            .require(:artwork_share)
            .permit(:viewer_id, :artwork_id)
    end

end