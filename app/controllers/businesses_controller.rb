class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]

  # GET /businesses
  # GET /businesses.json
  def index
    @businesses = Business.all

    render json: @businesses
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    render json: @business
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @business = Business.new(business_params)

    if @business.save
      render json: @business, status: :created, location: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /businesses/1
  # PATCH/PUT /businesses/1.json
  def update
    @business = Business.find(params[:id])

    if @business.update(business_params)
      head :no_content
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business.destroy

    head :no_content
  end

  private

    def set_business
      @business = Business.find(params[:id])
    end

    def business_params
      params.require(:business).permit(:name, :address, :type_of, :latitude, :longitude)
    end
end
