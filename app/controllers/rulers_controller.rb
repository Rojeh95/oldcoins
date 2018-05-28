class RulersController < ApplicationController
  before_action :set_ruler, only: [:show, :edit, :update, :destroy]

  # GET /rulers
  # GET /rulers.json
  def index
    @rulers = Ruler.all
  end

  # GET /rulers/1
  # GET /rulers/1.json
  def show
  end

  # GET /rulers/new
  def new
    @ruler = Ruler.new
  end

  # GET /rulers/1/edit
  def edit
  end

  # POST /rulers
  # POST /rulers.json
  def create
    @dynasty = Dynasty.find(params[:dynasty_id])
 
      # Create and save comment
 
    @ruler = @dynasty.rulers.create(ruler_params)


    respond_to do |format|
      if @ruler.save
        format.html { redirect_to @ruler, notice: 'Ruler was successfully created.' }
        format.json { render :show, status: :created, location: @ruler }
      else
        format.html { render :new }
        format.json { render json: @ruler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rulers/1
  # PATCH/PUT /rulers/1.json
  def update
    respond_to do |format|
      if @ruler.update(ruler_params)
        format.html { redirect_to @ruler, notice: 'Ruler was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruler }
      else
        format.html { render :edit }
        format.json { render json: @ruler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rulers/1
  # DELETE /rulers/1.json
  def destroy
    @ruler.destroy
    respond_to do |format|
      format.html { redirect_to rulers_url, notice: 'Ruler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruler
      @ruler = Ruler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruler_params
      params.require(:ruler).permit(:ru_name, :dynasty_id, :ru_image)
    end
end
