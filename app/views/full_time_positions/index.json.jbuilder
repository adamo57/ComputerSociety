json.array!(@full_time_positions) do |full_time_position|
  json.extract! full_time_position, :id, :position, :company, :link
  json.url full_time_position_url(full_time_position, format: :json)
end
