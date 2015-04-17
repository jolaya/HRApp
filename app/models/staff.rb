class Staff < ActiveRecord::Base
  belongs_to :job_title
  belongs_to :department
end
