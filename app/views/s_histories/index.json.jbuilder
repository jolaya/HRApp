json.array!(@s_histories) do |s_history|
  json.extract! s_history, :id, :staff_id, :date, :type_ent_id, :ndays, :observation
  json.url s_history_url(s_history, format: :json)
end
