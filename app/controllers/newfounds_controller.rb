class NewfoundsController < ApplicationController
  before_action :set_newfound, only: [:show, :edit, :update, :destroy]

  # GET /newfounds
  # GET /newfounds.json
  def index
    @newfounds = Newfound.all
  end

  # GET /newfounds/1
  # GET /newfounds/1.json
  def show
  end

  # GET /newfounds/new
  def new

    @dynasty = params[:dynasty]
    @ruler = params[:ruler]
    @city = params[:city]
    @year = params[:year]

    @newfound = Newfound.new
  end
  # GET /newfounds/1/edit
  def edit
  end

  # POST /newfounds
  # POST /newfounds.json
  def create

    @newfound = Newfound.create(newfound_params)

    respond_to do |format|
      if @newfound.save
        format.html { redirect_to @newfound, notice: 'Newfound was successfully created.' }
        format.json { render :show, status: :created, location: @newfound }
      else
        format.html { render :new }
        format.json { render json: @newfound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newfounds/1
  # PATCH/PUT /newfounds/1.json
  def update
    respond_to do |format|
      if @newfound.update(newfound_params)
        format.html { redirect_to @newfound, notice: 'Newfound was successfully updated.' }
        format.json { render :show, status: :ok, location: @newfound }
      else
        format.html { render :edit }
        format.json { render json: @newfound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newfounds/1
  # DELETE /newfounds/1.json
  def destroy
    @newfound.destroy
    respond_to do |format|
      format.html { redirect_to newfounds_url, notice: 'Newfound was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newfound
      @newfound = Newfound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newfound_params
      params.require(:newfound).permit(:dynasty, :ruler, :city, :year, :weight, :locality, :date,:nf_image_rs, :nf_image_vs )
    end
end
