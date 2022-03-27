class TestamentsController < ApplicationController
  before_action :set_testament, only: %i[ show update destroy ]

  # GET /testaments
  def index
    @testaments = Testament.all

    render json: @testaments
  end

  # GET /testaments/1
  def show
    render json: @testament
  end

  # POST /testaments
  def create
    @testament = Testament.new(testament_params)

    if @testament.save
      render json: @testament, status: :created, location: @testament
    else
      render json: @testament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /testaments/1
  def update
    if @testament.update(testament_params)
      render json: @testament
    else
      render json: @testament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /testaments/1
  def destroy
    @testament.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testament
      @testament = Testament.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testament_params
      params.require(:testament).permit(:name)
    end
end
