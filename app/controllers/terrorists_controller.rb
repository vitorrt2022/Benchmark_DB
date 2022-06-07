class TerroristsController < ApplicationController
  before_action :set_terrorist, only: %i[ show edit update destroy ]

  # GET /terrorists or /terrorists.json
  def index
    @terrorists = Terrorist.all
  end

  # GET /terrorists/1 or /terrorists/1.json
  def show
  end

  # GET /terrorists/new
  def new
    @terrorist = Terrorist.new
  end

  # GET /terrorists/1/edit
  def edit
  end

  # POST /terrorists or /terrorists.json
  def create
    @terrorist = Terrorist.new(terrorist_params)

    respond_to do |format|
      if @terrorist.save
        format.html { redirect_to terrorist_url(@terrorist), notice: "Terrorist was successfully created." }
        format.json { render :show, status: :created, location: @terrorist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @terrorist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terrorists/1 or /terrorists/1.json
  def update
    respond_to do |format|
      if @terrorist.update(terrorist_params)
        format.html { redirect_to terrorist_url(@terrorist), notice: "Terrorist was successfully updated." }
        format.json { render :show, status: :ok, location: @terrorist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @terrorist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terrorists/1 or /terrorists/1.json
  def destroy
    @terrorist.destroy

    respond_to do |format|
      format.html { redirect_to terrorists_url, notice: "Terrorist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terrorist
      @terrorist = Terrorist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def terrorist_params
      params.require(:terrorist).permit(:name, :id)
    end
end
