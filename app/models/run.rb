class Run < ActiveRecord::Base
  attr_accessible :browser, :module_name, :project_ID, :release_ID, :test_case_ID, :test_case_name, :test_result
end
