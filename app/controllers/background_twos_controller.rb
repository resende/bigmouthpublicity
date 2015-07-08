class BackgroundTwosController < ApplicationController
  before_action :set_background_two, only: [:show, :edit, :update, :destroy]

  # GET /background_twos
  # GET /background_twos.json
  def index
    @background_twos = BackgroundTwo.all
  end

  # GET /background_twos/1
  # GET /background_twos/1.json
  def show
  end

  # GET /background_twos/new
  def new
    @background_two = BackgroundTwo.new
  end

  # GET /background_twos/1/edit
  def edit
  end

  # POST /background_twos
  # POST /background_twos.json
  def create
    @background_two = BackgroundTwo.new(background_two_params)

    respond_to do |format|
      if @background_two.save
        format.html { redirect_to @background_two, notice: 'Background two was successfully created.' }
        format.json { render :show, status: :created, location: @background_two }
      else
        format.html { render :new }
        format.json { render json: @background_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /background_twos/1
  # PATCH/PUT /background_twos/1.json
  def update
    respond_to do |format|
      if @background_two.update(background_two_params)
        format.html { redirect_to @background_two, notice: 'Background two was successfully updated.' }
        format.json { render :show, status: :ok, location: @background_two }
      else
        format.html { render :edit }
        format.json { render json: @background_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /background_twos/1
  # DELETE /background_twos/1.json
  def destroy
    @background_two.destroy
    respond_to do |format|
      format.html { redirect_to background_twos_url, notice: 'Background two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_background_two
      @background_two = BackgroundTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def background_two_params
      params.require(:background_two).permit(:image, :active)
    end
end
