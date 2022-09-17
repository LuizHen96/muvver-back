class Api::V1::TravelsController < ApplicationController
  before_action :set_user
  before_action :set_travel, only: %i[ show update destroy ]

  # GET /travels
  def index
    @travels = @user.travels

    render json: @travels
  end

  # GET /travels/1
  def show
    render json: @travel
  end

  # POST /travels
  def create
    @travel = @user.travels.new(travel_params)

    if @travel.save
      render json: @travel, status: :created
    else
      render json: @travel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /travels/1
  def update
    if @travel.update(travel_params)
      render json: @travel
    else
      render json: @travel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /travels/1
  def destroy
    @travel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = @user.travels.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def travel_params
      params.permit(:vehicle, :departure_date, :arrive_date, :origin, :destination, :waypoints, :transport_volume, :transporte_weight, :minimum_price, :user_id)
    end
end
