class TestartifactsController < ApplicationController
  before_action :set_testartifact, only: [:show, :edit, :update, :destroy]

  # GET /testartifacts
  def index
    @testartifacts = Testartifact.paginate(:page => params[:page] , :per_page => 25)
  end

  # GET / create new plan

  def createnewplan
    
    @testartifacts = Testartifact.paginate(:page => params[:page] , :per_page => 500)

  end

  # add Testcases to new test plan
  

  def add
   

    @tid = Testartifact.find(params[:id]).id.to_s
    plan = Testplan.create(testplan_name:"LCOM Regression",pid:@tid ,application_id:Testartifact.find(params[:id]).application_ID.to_s)
    plan.save

    begin  

     redirect_to "/testartifacts/createnewplan"+@tid , notice: "Testartifact was successfully created."
   
    end

  end


  def import
    begin
      Testartifact.import(params[:file])
      redirect_to "/testartifacts/", notice: "Testcases imported."
    rescue
      redirect_to "/testartifacts/", notice: "Invalid CSV file format."
    end
  end


  # GET /testartifacts/1
  def show
  end

  # GET /testartifacts/new
  def new
    @testartifact = Testartifact.new
  end

  # GET /testartifacts/1/edit
  def edit
  end

  # POST /testartifacts
  def create
    @testartifact = Testartifact.new(testartifact_params)

    if @testartifact.save
      redirect_to @testartifact, notice: 'Testartifact was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /testartifacts/1
  def update
    if @testartifact.update(testartifact_params)
      redirect_to @testartifact, notice: 'Testartifact was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /testartifacts/1
  def destroy
    @testartifact.destroy
    redirect_to testartifacts_url, notice: 'Testartifact was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testartifact
      @testartifact = Testartifact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def testartifact_params
      params.require(:testartifact).permit(:name, :module, :application_ID, :testcase_ID, :automation_ID)
    end
end
