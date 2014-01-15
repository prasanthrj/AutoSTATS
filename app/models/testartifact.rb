class Testartifact < ActiveRecord::Base

	require 'CSV'
	attr_accessible :name, :module, :application_ID , :testcase_ID , :automation_ID

    def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      testartifact_hash = row.to_hash # exclude the price field
      testartifact = Testartifact.where(id: testartifact_hash["id"])

        Testartifact.create!(testartifact_hash)
    end # end CSV.foreach
  end # end self.import(file)

end
