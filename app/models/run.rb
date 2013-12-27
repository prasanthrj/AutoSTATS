class Run < ActiveRecord::Base
  attr_accessible :browser, :module_name, :project_ID, :release_ID, :test_case_ID, :test_case_name, :test_result

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |run|
      csv << run.attributes.values_at(*column_names)
    end
  end
end

end
