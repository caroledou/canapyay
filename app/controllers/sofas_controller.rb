class SofasController < ApplicationController
  def index
    puts "JE SUIS DASNS LE CONTROLLEUR"
    if params[:location].present? && params[:capacity].blank? && params[:km].blank?
      @sofas = Sofa.near(params[:location])
    elsif params[:location].blank? && params[:capacity].present? && params[:km].blank?
      @sofas = Sofa.where(capacity: params[:capacity])
    elsif params[:location].present? && params[:capacity].present? && params[:km].blank?
      @sofas = Sofa.near(params[:location])
      @sofas = @sofas.where(capacity: params[:capacity])
    elsif params[:location].present? && params[:capacity].blank? && params[:km].present?
      @sofas = Sofa.near(params[:location], params[:km])
    elsif params[:location].blank? && params[:capacity].present? && params[:km].present?
      @sofas = Sofa.where(capacity: params[:capacity])
    elsif params[:location].present? && params[:capacity].present? && params[:km].present?
      @sofas = Sofa.near(params[:location], params[:km])
      @sofas = @sofas.where(capacity: params[:capacity])
    else
      @sofas = Sofa.all
    end
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
      infoWindow: render_to_string(partial: "infowindow", locals: { address: @sofa.address }),
      image_url: helpers.asset_url('sofa_circle.png')
    }]
  end

  private

  def sofa_params
    params.require(:sofa).permit(:name, :description, :location, :price_per_day, :capacity, :comfort, :age, :wineproof, :bed, :photo, :address)
  end
end
