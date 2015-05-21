json.array!(@internship_positions) do |internship_position|
  json.extract! internship_position, :id, :position, :company, :link
  json.url internship_position_url(internship_position, format: :json)
end
