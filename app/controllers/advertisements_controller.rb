class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.body = params[:advertisement][:body]
    temp_price = params[:advertisement][:price]
    @advertisement.price = temp_price.to_i

    if @advertisement.save
      flash[:notice] = "Ad was saved."
      redirect_to @advertisement
    else
      flash.now[:alert] = "There was an error saving the ad.  Please try again."
      render :new
    end
  end

  def edit
  end
end
