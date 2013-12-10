class Release < ActiveRecord::Base
  attr_accessible :project_ID, :release_ID, :release_end_date, :release_start_date, :release_status
end
