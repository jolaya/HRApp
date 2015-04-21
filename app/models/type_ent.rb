class TypeEnt < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            TypeEnt.create! row.to_hash
        end
    end
end
