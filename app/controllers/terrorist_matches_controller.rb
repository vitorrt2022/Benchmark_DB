class TerroristMatchesController < ApplicationController
  before_action :set_terrorist_match, only: %i[ show edit update destroy ]

  # GET /terrorist_matches or /terrorist_matches.json
  def index
    @terrorist_matches = TerroristMatch.all
  end

  # GET /terrorist_matches/1 or /terrorist_matches/1.json
  def show
  end

  # GET /terrorist_matches/new
  def new
    @terrorist_match = TerroristMatch.new
  end

  # GET /terrorist_matches/1/edit
  def edit
  end

  # POST /terrorist_matches or /terrorist_matches.json
  def create
    @terrorist_match = TerroristMatch.new(terrorist_match_params)

    respond_to do |format|
      if @terrorist_match.save
        format.html { redirect_to terrorist_match_url(@terrorist_match), notice: "Terrorist match was successfully created." }
        format.json { render :show, status: :created, location: @terrorist_match }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @terrorist_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terrorist_matches/1 or /terrorist_matches/1.json
  def update
    respond_to do |format|
      if @terrorist_match.update(terrorist_match_params)
        format.html { redirect_to terrorist_match_url(@terrorist_match), notice: "Terrorist match was successfully updated." }
        format.json { render :show, status: :ok, location: @terrorist_match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @terrorist_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terrorist_matches/1 or /terrorist_matches/1.json
  def destroy
    @terrorist_match.destroy

    respond_to do |format|
      format.html { redirect_to terrorist_matches_url, notice: "Terrorist match was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terrorist_match
      @terrorist_match = TerroristMatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def terrorist_match_params
      params.require(:terrorist_match).permit(:user_id, :m_name, :match)
    end
end
