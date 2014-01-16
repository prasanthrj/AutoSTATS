class TrendsController < ApplicationController
  # GET /runs
  # GET /runs.json
  def index

    @runs = Run.paginate(:page => params[:page] , :per_page => 5)

      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @runs }

     # @test = Project.where(:id=>10) 
      @test = Run.where("project_ID = ?", 1).take.test_case_ID;
      
     
      @run_count = Run.count;
      @project_count = Project.count;
      @release_count = Release.count;
      @module_tiles = ['Module One','Module Two','Module Three'];
      
    end
  end
end