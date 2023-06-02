class TargetParamsController < ApplicationController
  before_action :set_target_param, only: %i[ show edit update destroy ]

  # GET /target_params or /target_params.json
  def index
    @target_params = TargetParam.all
  end

  # GET /target_params/1 or /target_params/1.json
  def show
  end

  # GET /target_params/new
  def new
    @target_param = TargetParam.new
  end

  # GET /target_params/1/edit
  def edit
  end

  # POST /target_params or /target_params.json
  def create
    @target_param = TargetParam.new(target_param_params)

    respond_to do |format|
      if @target_param.save
        format.html { redirect_to target_param_url(@target_param), notice: "Target param was successfully created." }
        format.json { render :show, status: :created, location: @target_param }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @target_param.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /target_params/1 or /target_params/1.json
  def update
    respond_to do |format|
      if @target_param.update(target_param_params)
        format.html { redirect_to target_param_url(@target_param), notice: "Target param was successfully updated." }
        format.json { render :show, status: :ok, location: @target_param }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @target_param.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /target_params/1 or /target_params/1.json
  def destroy
    @target_param.destroy

    respond_to do |format|
      format.html { redirect_to target_params_url, notice: "Target param was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target_param
      @target_param = TargetParam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def target_param_params
      params.require(:target_param).permit(:project_id, :start_price, :is_credit, :initial_fee, :mortgage_interest, :project_duration, :additional_expenses, :monthly_payment)
    end
end
