class StatesController < ApplicationController
  include Dictionary
  before_action :set_state, only: %i[ show edit update destroy ]

  # GET /states or /states.json
  def index
    @state, @states = object_index_factory(State)
  end

  # GET /states/1 or /states/1.json
  def show
  end

  # GET /states/new
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
  end

  # POST /states or /states.json
  def create
    @state = State.new(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to states_path }
      else
        format.turbo_stream {
          render turbo_stream: turbo_stream.replace(@state, partial: 'states/form', locals: { state: @state })
        }
      end
    end
  end

  # PATCH/PUT /states/1 or /states/1.json
  def update
    respond_to do |format|
      if @state.update(state_params)
        format.html { redirect_to state_url(@state)}
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1 or /states/1.json
  def destroy
    @state.destroy

    respond_to do |format|
      #format.turbo_stream { render turbo_stream: turbo_stream.remove(@state) }
      format.html { redirect_to states_url, notice: "State was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def state_params
      params.require(:state).permit(:name)
    end
end
