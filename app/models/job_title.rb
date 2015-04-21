class JobTitle < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            JobTitle.create! row.to_hash
        end
    end
end
