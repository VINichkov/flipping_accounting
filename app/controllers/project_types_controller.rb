class ProjectTypesController < ApplicationController
  include Dictionary
  before_action :set_project_type, only: %i[ show edit update destroy ]

  # GET /project_types or /project_types.json
  def index
    @project_type, @project_types = object_index_factory(ProjectType)
  end

  # GET /project_types/1 or /project_types/1.json
  def show
  end

  # GET /project_types/new
  def new
    @project_type = ProjectType.new
  end

  # GET /project_types/1/edit
  def edit
  end

  # POST /project_types or /project_types.json
  def create
    @project_type = ProjectType.new(project_type_params)

    respond_to do |format|
      if @project_type.save
        format.html { redirect_to project_types_path }
      else
        format.turbo_stream {
          render turbo_stream: turbo_stream.replace(
            @project_type, partial: 'project_types/form', locals: { project_type: @project_type}
          )
        }
      end
    end
  end

  # PATCH/PUT /project_types/1 or /project_types/1.json
  def update
    respond_to do |format|
      if @project_type.update(project_type_params)
        format.html { redirect_to project_type_url(@project_type)}
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_types/1 or /project_types/1.json
  def destroy
    @project_type.destroy

    respond_to do |format|
      format.html { redirect_to project_types_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_type
      @project_type = ProjectType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_type_params
      params.require(:project_type).permit(:name)
    end
end
