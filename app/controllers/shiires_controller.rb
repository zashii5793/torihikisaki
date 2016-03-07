class ShiiresController < ApplicationController
  before_action :set_shiire, only: [:show, :edit, :update, :destroy]

  # GET /shiires
  # GET /shiires.json
  def index
    @shiires = Shiire.all
  end

  # GET /shiires/1
  # GET /shiires/1.json
  def show
  end

  # GET /shiires/new
  def new
    @shiire = Shiire.new
  end

  # GET /shiires/1/edit
  def edit
  end

  # POST /shiires
  # POST /shiires.json
  def create
    @shiire = Shiire.new(shiire_params)

    respond_to do |format|
      if @shiire.save
        format.html { redirect_to @shiire, notice: 'Shiire was successfully created.' }
        format.json { render :show, status: :created, location: @shiire }
      else
        format.html { render :new }
        format.json { render json: @shiire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shiires/1
  # PATCH/PUT /shiires/1.json
  def update
    respond_to do |format|
      if @shiire.update(shiire_params)
        format.html { redirect_to @shiire, notice: 'Shiire was successfully updated.' }
        format.json { render :show, status: :ok, location: @shiire }
      else
        format.html { render :edit }
        format.json { render json: @shiire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shiires/1
  # DELETE /shiires/1.json
  def destroy
    @shiire.destroy
    respond_to do |format|
      format.html { redirect_to shiires_url, notice: 'Shiire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shiire
      @shiire = Shiire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shiire_params
      params.require(:shiire).permit(:kai_code, :sir_code, :sir_name)
    end
end
