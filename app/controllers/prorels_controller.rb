class ProrelsController < ActionController::Base

	def index

	type = params[:project]

    #@projects = Release.where("project_ID = ?", type ).take.release_ID;
    @project = Release.where("project_ID = ?",type);

    end
end