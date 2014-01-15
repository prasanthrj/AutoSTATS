class TestplansController < ApplicationController
  before_action :set_testplan, only: [:show, :edit, :update, :destroy]

  # GET /testplans
  def index
    @testplans = Testplan.all
  end


  # GET /testplans / 


  def testContents

    @testplans = Testplan.where(application_id: params[:Application_Id]).where(testplan_name: params[:testplan_type])

  end

  # GET Downloads

  def download

    
  end



  # GET /testplans/1
  def show
  end

  # GET /testplans/new
  def new
    @testplan = Testplan.new
  end

  # GET /testplans/1/edit
  def edit
  end

  # POST /testplans
  def create
    @testplan = Testplan.new(testplan_params)

    if @testplan.save
      redirect_to @testplan, notice: 'Testplan was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /testplans/1
  def update
    if @testplan.update(testplan_params)
      redirect_to @testplan, notice: 'Testplan was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /testplans/1
  def destroy
    @testplan.destroy
    redirect_to testplans_url, notice: 'Testplan was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testplan
      @testplan = Testplan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def testplan_params
      params.require(:testplan).permit(:application_id, :testplan_name, :pid)
    end
end
