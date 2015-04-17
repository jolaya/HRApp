json.array!(@staffs) do |staff|
  json.extract! staff, :id, :staff_number, :name, :surname, :job_title_id, :department_id, :startdate, :finishdate, :active
  json.url staff_url(staff, format: :json)
end
