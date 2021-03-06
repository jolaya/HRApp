class Staff < ActiveRecord::Base
  belongs_to :job_title
  belongs_to :department
  has_one :profiles

  def fullname
    "#{name}, #{surname}"
  end

end
