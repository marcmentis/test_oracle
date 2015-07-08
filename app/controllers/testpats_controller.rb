class TestpatsController < ApplicationController
  before_action :set_testpat, only: [:show, :edit, :update, :destroy]

  # GET /testpats
  # GET /testpats.json
  def index
    @testpats = Testpat.all
  end

  # GET /testpats/1
  # GET /testpats/1.json
  def show
  end

  # GET /testpats/new
  def new
    @testpat = Testpat.new
  end

  # GET /testpats/1/edit
  def edit
  end

  # POST /testpats
  # POST /testpats.json
  def create
    @testpat = Testpat.new(testpat_params)

    respond_to do |format|
      if @testpat.save
        format.html { redirect_to @testpat, notice: 'Testpat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @testpat }
      else
        format.html { render action: 'new' }
        format.json { render json: @testpat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testpats/1
  # PATCH/PUT /testpats/1.json
  def update
    respond_to do |format|
      if @testpat.update(testpat_params)
        format.html { redirect_to @testpat, notice: 'Testpat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @testpat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testpats/1
  # DELETE /testpats/1.json
  def destroy
    @testpat.destroy
    respond_to do |format|
      format.html { redirect_to testpats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testpat
      @testpat = Testpat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testpat_params
      params.require(:testpat).permit(:firstname, :lastname, :identifier)
    end
end
