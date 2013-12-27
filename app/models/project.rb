class Project < ActiveRecord::Base
  attr_accessible :project_description, :project_name

  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |project|
      csv << project.attributes.values_at(*column_names)
    end
  end
end

end
