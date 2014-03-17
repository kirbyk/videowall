class PanelsController < ApplicationController
  before_action :set_panel, only: [:show, :edit, :update, :destroy]
  before_filter :prepare_styles

  def wall
    @panels = Panel.where(active: true).order(order: :asc)
  end

  def index
    @panels = Panel.order(order: :asc)
  end

  def show
  end

  def new
    @panel = Panel.new
    3.times do
      panel_data = @panel.panel_datas.build
      2.times {panel_data.texts.build}
    end
  end

  def edit
  end

  def create
    @panel = Panel.new(panel_params)

    respond_to do |format|
      if @panel.save
        format.html { redirect_to @panel, notice: 'Panel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @panel }
      else
        format.html { render action: 'new' }
        format.json { render json: @panel.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @panel.update(panel_params)
        format.html { redirect_to @panel, notice: 'Panel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @panel.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @panel.destroy
    respond_to do |format|
      format.html { redirect_to panels_url }
      format.json { head :no_content }
    end
  end

  private
    def prepare_styles
      @styles = Style.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_panel
      @panel = Panel.find(params[:id])
    end

    # Permit everything, because it's not exposed to the internet
    def panel_params
      params.require(:panel).permit!
    end
end
