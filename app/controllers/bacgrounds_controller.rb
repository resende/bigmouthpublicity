class BackgroundsController < ApplicationController
  before_action :set_bacground, only: [:show, :edit, :update, :destroy]

  # GET /bacgrounds
  # GET /bacgrounds.json
  def index
    @bacgrounds = Bacground.all
  end

  # GET /bacgrounds/1
  # GET /bacgrounds/1.json
  def show
  end

  # GET /bacgrounds/new
  def new
    @bacground = Bacground.new
  end

  # GET /bacgrounds/1/edit
  def edit
  end

  # POST /bacgrounds
  # POST /bacgrounds.json
  def create
    @bacground = Bacground.new(bacground_params)

    respond_to do |format|
      if @bacground.save
        format.html { redirect_to @bacground, notice: 'Bacground was successfully created.' }
        format.json { render :show, status: :created, location: @bacground }
      else
        format.html { render :new }
        format.json { render json: @bacground.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bacgrounds/1
  # PATCH/PUT /bacgrounds/1.json
  def update
    respond_to do |format|
      if @bacground.update(bacground_params)
        format.html { redirect_to @bacground, notice: 'Bacground was successfully updated.' }
        format.json { render :show, status: :ok, location: @bacground }
      else
        format.html { render :edit }
        format.json { render json: @bacground.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bacgrounds/1
  # DELETE /bacgrounds/1.json
  def destroy
    @bacground.destroy
    respond_to do |format|
      format.html { redirect_to bacgrounds_url, notice: 'Bacground was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bacground
      @bacground = Bacground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bacground_params
      params.require(:bacground).permit(:image, :active)
    end
end
