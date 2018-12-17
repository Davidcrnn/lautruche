class MpicturesController < ApplicationController
    def destroy
    @mpicture = Mpicture.find(params[:id])
    @mpicture.destroy
    redirect_back(fallback_location: root_path)
  end
end
