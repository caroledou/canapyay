class SofasController < ApplicationController
  def index
    @sofas = Sofa.all
  end

  def new
    @sofa = Sofa.new
  end

  def create
    @sofa = Sofa.new(sofa_params)
    if @sofa.save
      redirect_to sofas_path
    else
      render :new
    end
  end

  def show
    @sofa = Sofa.find(params[:id])
    @markers = [{
      lng: @sofa.longitude,
      lat: @sofa.latitude,
      infoWindow: render_to_string(partial: "infowindow", locals: { howmuch: @sofa.price_per_day }),
      image_url: helpers.asset_url('sofa_circle.png')
    }]
  end

  private

  def sofa_params
    params.require(:sofa).permit(:name, :description, :location, :price_per_day, :capacity, :comfort, :age, :wineproof, :bed, :photo)
  end
end
