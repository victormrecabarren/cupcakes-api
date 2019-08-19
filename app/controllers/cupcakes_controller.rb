class CupcakesController < ApplicationController
  before_action :set_cupcake, only: [:show, :update, :destroy]

  # GET /cupcakes
  def index
    @cupcakes = Cupcake.all

    render json: @cupcakes
  end

  # GET /cupcakes/1
  def show
    render json: @cupcake
  end

  # POST /cupcakes
  def create
    @cupcake = Cupcake.new(cupcake_params)

    if @cupcake.save
      render json: @cupcake, status: :created, location: @cupcake
    else
      render json: @cupcake.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cupcakes/1
  def update
    if @cupcake.update(cupcake_params)
      render json: @cupcake
    else
      render json: @cupcake.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cupcakes/1
  def destroy
    @cupcake.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupcake
      @cupcake = Cupcake.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cupcake_params
      params.require(:cupcake).permit(:name, :type, :calories, :carbs, :description, :price, :image)
    end
end
