json.array!(@job_titles) do |job_title|
  json.extract! job_title, :id, :description
  json.url job_title_url(job_title, format: :json)
end
