class LogsMercsController < ApplicationController
  before_action :set_logs_merc, only: %i[ show edit update destroy ]

  # GET /logs_mercs or /logs_mercs.json
  def index
    @logs_mercs = LogsMerc.all
  end

  # GET /logs_mercs/1 or /logs_mercs/1.json
  def show
  end

  # GET /logs_mercs/new
  def new
    @logs_merc = LogsMerc.new
  end

  # GET /logs_mercs/1/edit
  def edit
  end

  # POST /logs_mercs or /logs_mercs.json
  def create
    @logs_merc = LogsMerc.new(logs_merc_params)

    respond_to do |format|
      if @logs_merc.save
        format.html { redirect_to logs_merc_url(@logs_merc), notice: "Logs merc was successfully created." }
        format.json { render :show, status: :created, location: @logs_merc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @logs_merc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logs_mercs/1 or /logs_mercs/1.json
  def update
    respond_to do |format|
      if @logs_merc.update(logs_merc_params)
        format.html { redirect_to logs_merc_url(@logs_merc), notice: "Logs merc was successfully updated." }
        format.json { render :show, status: :ok, location: @logs_merc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @logs_merc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logs_mercs/1 or /logs_mercs/1.json
  def destroy
    @logs_merc.destroy

    respond_to do |format|
      format.html { redirect_to logs_mercs_url, notice: "Logs merc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logs_merc
      @logs_merc = LogsMerc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def logs_merc_params
      params.require(:logs_merc).permit(:user_id, :m_name, :t_name)
    end
end
