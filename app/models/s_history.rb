class SHistory < ActiveRecord::Base
  belongs_to :staff
  belongs_to :type_ent
end
