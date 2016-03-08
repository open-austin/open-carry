class BusinessTypesController < ApplicationController
  before_action :set_business_type, only: [:show, :update, :destroy]

  # GET /business_types
  # GET /business_types.json
  def index
    @business_types = BusinessType.all

    render json: @business_types
  end

  # GET /business_types/1
  # GET /business_types/1.json
  def show
    render json: @business_type
  end

  # POST /business_types
  # POST /business_types.json
  def create
    @business_type = BusinessType.new(business_type_params)

    if @business_type.save
      render json: @business_type, status: :created, location: @business_type
    else
      render json: @business_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /business_types/1
  # PATCH/PUT /business_types/1.json
  def update
    @business_type = BusinessType.find(params[:id])

    if @business_type.update(business_type_params)
      head :no_content
    else
      render json: @business_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /business_types/1
  # DELETE /business_types/1.json
  def destroy
    @business_type.destroy

    head :no_content
  end

  private

    def set_business_type
      @business_type = BusinessType.find(params[:id])
    end

    def business_type_params
      params.require(:business_type).permit(:name)
    end
end
