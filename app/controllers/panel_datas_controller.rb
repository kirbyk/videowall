class PanelDatasController < ApplicationController
  before_action :set_panel_data, only: [:show, :edit, :update, :destroy]

  # GET /panel_datas
  # GET /panel_datas.json
  def index
    @panel_datas = PanelData.all
  end

  # GET /panel_datas/1
  # GET /panel_datas/1.json
  def show
  end

  # GET /panel_datas/new
  def new
    @panel_data = PanelData.new
  end

  # GET /panel_datas/1/edit
  def edit
  end

  # POST /panel_datas
  # POST /panel_datas.json
  def create
    @panel_data = PanelData.new(panel_data_params)

    respond_to do |format|
      if @panel_data.save
        format.html { redirect_to @panel_data, notice: 'Panel data was successfully created.' }
        format.json { render action: 'show', status: :created, location: @panel_data }
      else
        format.html { render action: 'new' }
        format.json { render json: @panel_data.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel_datas/1
  # PATCH/PUT /panel_datas/1.json
  def update
    respond_to do |format|
      if @panel_data.update(panel_data_params)
        format.html { redirect_to @panel_data, notice: 'Panel data was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @panel_data.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel_datas/1
  # DELETE /panel_datas/1.json
  def destroy
    @panel_data.destroy
    respond_to do |format|
      format.html { redirect_to panel_datas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_data
      @panel_data = PanelData.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_data_params
      params.require(:panel_data).permit(:name, :panel_id)
    end
end
