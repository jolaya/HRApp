class Department < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Department.create! row.to_hash
        end
    end
end
